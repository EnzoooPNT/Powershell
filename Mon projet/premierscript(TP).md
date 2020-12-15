Pour mon premier script, je vais faciliter la gestion de nos utilisateurs dans l'Active Directory.

LA CONSIGNE : 

Je souhaite obtenir la liste de tous mes utilisateurs Active Directory dont la dernière connexion est supérieure à 90 jours afin de verrouiller leur compte pour des raisons de sécurité. Être proactif n'a jamais fait de mal à personne, alors nous ajouterons l'envoi d'un email automatique au help desk (assistance) pour les informer de cette désactivation.

Nous allons dans un premier temps, importer le module PowerShell Active Directory.

LE SCRIPT : 


# Script pour automatiser la désactivation des comptes AD dont la dernière connexion > 90 jours
# version 1.0
# Auteur : Nicolas PRIGENT

# Force le type d'execution
Set-ExecutionPolicy Unrestricted

# Importe le module AD
Import-Module ActiveDirectory

PHOTO



LA RECHERCHE ACTIVEDIRECTORY :

Pour lister les utilisateurs concernés, nous allons utiliser la cmdletSearch-ADAccount suivie de plusieurs paramètres :

-UsersOnly : recherche uniquement des objets de type "account"
-AccountInactive : recherche les comptes qui ne se sont pas connectés depuis une certaine période
-TimeSpan : indique la durée d'inactivité
-SearchBase : recherche uniquement dans cette unité d'organisation

LE SCRIPT :


$LockedAccount = Search-ADAccount -UsersOnly -AccountInactive -TimeSpan 90.00:00:00 -SearchBase "OU=Users,DC=Domaine,DC=Local" | Where {$_.enabled}

PHOT0





FILTRER UNIQUEMENT SUR LES COMPTES ACTIFS

grâce à Where-Object.

Nous disposons maintenant d'une liste de comptes dont la dernière connexion est supérieure à 90 jours via la variable$LockedAccount.







DESACTIVER TOUS CES COMPTES

grâce à $LockedAccount | Set-ADUser -Enabled $false




L'ENVOIE DE L'E-MAIL
Il nous reste plsu qu'à envoyer un email au help desk afin de lui indiquer la liste des comptes désactivés. Pour cela, il nous faut quelques variables (serveur SMTP, expéditeur, destinataire, sujet du mail, corps du mail) : on les utilisera ensuite dans la cmdletSend-MailMessage, nous permettant ainsi d'envoyer l'email.

LE SCRIPT:

'''
$smtpServer = "mail.domaine.local"
$from = "DisableADAccount <powershell@domaine.local>"
$to = "Helpdesk <helpdesk@domaine.local>"
$subject = "[INFO] Comptes AD last logon > 90 jours"
$body = "
<html>
  <head></head>
     <body>
        <p>Bonjour,<br />
           Les comptes suivants sont d&eacute;sactiv&eacute; &agrave; cause d'une inactivit&eacute; de plus de 90 jours<br />:
           $LockedAccount
        </p>
      </body>
</html>"

'''
Send-MailMessage -smtpserver $smtpserver -from $from -to $to -subject $subject -body $body -bodyasHTML -priority High

PHOTO


LE SCRIPT FINAL EST LE SUIVANT : 

PHOTO
