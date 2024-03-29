1. Donne une ligne de commande bash qui permet de lister la liste des utilisateurs d'un système Linux
`cat /etc/passwd`

2. Quelle commande bash permet de changer les droits du fichier **myfile** en rwxr—r-- ?
`chmod 744 myfile`

3. Comment faire pour que les fichiers **pdf** d'un dépôt local git ne soient pas pris en compte lors d'un **git push** ?
Il faut inscrire * .pdf (j'ai mis un espace entre l'* et le . sinon ça met en italique en .md) dans le fichier .gitignore

4. Quelles commandes git utiliser pour fusionner les branches **main** et **test_valide** ?
`git merge test_valide`

5. Donne la(les) ligne(s) de commande(s) bash pour afficher le texte suivant :
`cat texte.txt` après avoir préalablement mis le texte dans un fichier texte.txt

6. Quelle commande te permet de mettre en avant le processus **gedit** ?
`jobs -l | grep gedit`

7. Quels matériels réseaux sont sur la couche 2 et la couche 3 du modèle OSI ? Donne leurs spécificités.

La couche 2 du modèle OSI est la couche Liaison, les matériels utilisés sont les switchs.
La couche 3 du modèle OSI est la couche Réseau, les matériels utilisés sont les routeurs.

8. Quels sont les équivalent PowerShell des commandes bash **cd**, **cp**, **mkdir**, **ls**.


| Bash  |                    PowerShell                    |
| :---: | :----------------------------------------------: |
|  cd   |                   Set-Location                   |
|  cp   |                    Copy-Item                     |
| mkdir | New-Item -Path " " -Name " " -ItemType Directory |
|  ls   |                  Get-ChildItem                   |
9. Dans la trame ethernet, qu'est-ce que le payload ?
C'est la charge utile, c'est le contenu à transmettre 

10. Pourquoi les classes IP sont remplacées par le CIDR ?
Principalement car il y a une pénurie d'adresses, vu que pour la plupart des gens les classes étaient soit trop petites soit trop grandes.
