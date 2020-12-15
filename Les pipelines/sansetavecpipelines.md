SANS puis AVEC pipelines 

Sans utiliser de pipe, je vais devoir faire un code comme ceci :

$users = Get-AdUser -filter * -Properties mail

 foreach($user in $users) { echo $user.mail }
 
Le moteur Powershell va donc dans un premier temps effectuer une requête dans l'AD, stocker les résultats dans une variable, puis ensuite parser
cette variable pour afficher les adresses mail.
En utilisant un pipe, tout va tenir sur une ligne et je n'aurai pas à occuper de la mémoire en
mobilisant une variable :

Get-AdUser -filter * -Properties mail | select mail

Le pipe, comme son nom l'indique, permet d'agir comme un tuyau. Dans cet exemple, pour chaque utilisateur que Get-ADUser renvoie, on affiche son
adresse mail.
Le moteur Powershell va donc traiter de multiples instructions en un seul appel.
