C'est quoi powershell ?

Windows PowerShell, anciennement Microsoft Command Shell (MSH), nom de code Monad, est une suite logicielle développée par Microsoft qui intègre une interface en ligne de commande, un langage de script nommé PowerShell ainsi qu'un kit de développement. Il est inclus dans Windows 7, Windows 8.1 et Windows 10 (y compris les versions grand public) et s'appuie sur le framework Microsoft .NET.

Quelques dates..

- À l'origine, il était prévu que l'environnement Windows PowerShell soit inclus dans Windows Vista, mais finalement les deux logiciels ont été disjoints. Microsoft a publié une version beta le 11 septembre 2005.

-La version finale a été publiée le 14 novembre 2006.

-Depuis le 24 mars 2009, Windows PowerShell 1.0 pour Windows XP et Vista est distribué comme une mise à jour logicielle facultative par le service Windows Update de Microsoft. Powershell est intégré nativement dans Windows 7 en version 2.0

Pourquoi utiliser powershell ?

PowerShell peut approfondir les détails  pour créer des scripts puissants qui fonctionnent, ainsi que certaines applications disponibles dans le commerce. PowerShell peut extraire des données directement du sous-système WMI, vous donnant des informations en temps réel et approfondies sur tout ce qui concerne les ID de processus et le nombre de descripteurs.

PowerShell est connecté au framework .NET, ce qui vous permet de créer de superbes menus et winforms qui ressemblent à des applications légitimes. Vous pouvez utiliser PowerShell pour tout faire, de l'interrogation de bases de données SQL à la saisie de vos flux RSS préférés directement dans votre session PowerShell pour une manipulation ultérieure. C'est un véritable couteau suisse pour l'administration système dans les environnements Windows

Powershell ou shell ? 

PowerShell est superficiellement similaire aux shells Unix. Il a des alias pour la plupart des commandes auxquelles vous êtes habitué sous Unix, comme ls, rm, cp, mv, etc. Cependant, la façon dont les applets de commande derrière les alias fonctionnent est assez différente.

Dans un shell * nix, tout est basé sur du texte, donc la sortie d'une commande peut être redirigée vers une autre, mais le programme récepteur doit savoir comment analyser / interpréter le texte du pipeline. C'est la principale différence entre les shells PowerShell et * nix ... dans PowerShell, tout ce qui est transmis est un objet.

La conséquence de ceci est que le transfert d'une commande à une autre ne consiste pas simplement à envoyer stdout vers stdin. Il envoie un objet .net à part entière au récepteur. Par conséquent, le récepteur a juste besoin de savoir comment gérer un objet de ce type. Il n'a pas besoin d'implémenter d'analyse de texte, mais il doit comprendre comment appeler des méthodes et des propriétés (membres) de l'objet d'entrée.

Dans un programme en ligne de commande * nix, vous écririez du code qui lit depuis stdin et analyse ses informations à partir du texte généré par un autre programme.
