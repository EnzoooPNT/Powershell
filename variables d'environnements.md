C'est quoi les variables d'environnement ?

Les variables d’environnement stockent des informations sur l’environnement du système d’exploitation. Ces informations incluent des détails tels que le chemin d’accès du système d’exploitation, le nombre de processeurs utilisés par le système d’exploitation et l’emplacement des dossiers temporaires.

Les variables d’environnement stockent les données utilisées par le système d’exploitation et d’autres programmes. Par exemple, la WINDIR variable d’environnement contient l’emplacement du répertoire d’installation de Windows. Les programmes peuvent interroger la valeur de cette variable pour déterminer où se trouvent les fichiers de système d’exploitation Windows.

PowerShell peut accéder aux variables d’environnement et les gérer dans toutes les plateformes de système d’exploitation prises en charge. Le fournisseur d’environnement PowerShell simplifie ce processus en facilitant l’affichage et la modification des variables d’environnement.

Comment les utiliser ? 

Sur Windows, les variables d’environnement peuvent être définies dans trois étendues :
Portée de l’ordinateur (ou système)
Étendue d’utilisateur
Portée du processus
La portée du processus contient les variables d’environnement disponibles dans le processus en cours, ou la session PowerShell. Cette liste de variables est héritée du processus parent et est construite à partir des variables dans les étendues de l' ordinateur et de l' utilisateur . Les plateformes UNIX disposent uniquement de l’étendue du processus .
Vous pouvez afficher et modifier les valeurs des variables d’environnement sans utiliser une applet de commande à l’aide d’une syntaxe de variable avec le fournisseur de l’environnement. 

Pour afficher la valeur d’une variable d’environnement, utilisez la syntaxe suivante :  <variable-name>
