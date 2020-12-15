Powershell ou shell ? 

-PowerShell est superficiellement similaire aux shells Unix. Il a des alias pour la plupart des commandes auxquelles vous êtes habitué sous Unix, comme ls, rm, cp, mv, etc. Cependant, la façon dont les applets de commande derrière les alias fonctionnent est assez différente.

-Dans un shell * nix, tout est basé sur du texte, donc la sortie d'une commande peut être redirigée vers une autre, mais le programme récepteur doit savoir comment analyser / interpréter le texte du pipeline. C'est la principale différence entre les shells PowerShell et * nix ... dans PowerShell, tout ce qui est transmis est un objet.

La conséquence de ceci est que le transfert d'une commande à une autre ne consiste pas simplement à envoyer stdout vers stdin. Il envoie un objet .net à part entière au récepteur. Par conséquent, le récepteur a juste besoin de savoir comment gérer un objet de ce type. Il n'a pas besoin d'implémenter d'analyse de texte, mais il doit comprendre comment appeler des méthodes et des propriétés (membres) de l'objet d'entrée.

Dans un programme en ligne de commande * nix, vous écririez du code qui lit depuis stdin et analyse ses informations à partir du texte généré par un autre programme.

![](https://github.com/EnzoooPNT/Powershell/blob/main/IMAGE/powershell%20logo.jpg)
