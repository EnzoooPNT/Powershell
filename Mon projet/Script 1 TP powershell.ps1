# Selection de l'action à réaliser
$choose = Read-Host -Prompt('Voulez vous : 1 = créer un utilisateur . 2 = Supprimer un utilisateur . 3 = modifier un utilisateur .
4 = voir tout les utilisateurs . 5 = faire une recherche sur un utilisateur')

# Si le choix est égal à 1 alors il y a une création d'un utilisateur
If ($choose -eq 1)

{
 $name = Read-Host -Prompt('Quel sera le nom du nouvel utilisateur ?')
 New_LocalUser -Name $name
}

# Si le choix est égal à 2 : supressio d'un utilisateur 
elseif ($choose -eq 2)

{
 $removename = Read-Host -Prompt('Quel utilisateur voulez vous supprimer ?')
 Remove-LocalUser -name $removename
}

# Si le choix est égal à 3 : modification d'un utilisateur
elseif ($choose -eq 3){
 $nametochange = Read-Host -Prompt ('Quel nom d utilisateur que vous voulez modifiez ?')
 $namechange = Read-Host -Prompt('Quel nouveau nom voulez vous donner à votre utilisateur ?')
 Rename-LocalUser -Name $nametochange -NewName $namechange
}

# Si le choix est égal à 4 : alors il affichera tous les utilisateurs
elseif ($choose -eq 4){
 Gete-LocalUser
}

# Si le choix est égale à 5 : alors afficher les infos sur un utilisateur précis

elseif ($choose -eq 5){
$infoname = Read-Host -Prompt('Quel est le nom de l utilisateur sur qui vous voulez des informations ?')
Get-LocalUser -Name $infoname
}