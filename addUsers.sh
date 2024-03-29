#! /bin/bash

# Script pour la création d'utilisateurs

# Vérification de la présence d'arguments, si pas d'arguments : erreur "Il manque les noms d'utilisateurs en arguments - Fin du script"

if [ $# -eq 0 ]; then

    echo "Il manque les noms d'utilisateurs en arguments - Fin du script."

    exit 1

fi

# Pour chaque utilisateur à créer, il doit y avoir une vérification de l'existence dans le système.

# S'il existe déjà, un message indiquera "L'utilisateur <nom_utilisateur> existe déjà" et le script continue.

for nouvel_utilisateur in "$@"; do

    if cat /etc/passwd | grep "$nouvel_utilisateur" >/dev/null; then

        echo "L'utilisateur "$nouvel_utilisateur" existe déjà."

    else

        echo "Création de l'utilisateur en cours..."

        sudo useradd $nouvel_utilisateur

        # Pour chaque utilisateur créer, il doit y avoir une vérification de cette création.

        # Si la création s'est bien effectuée, un message affiche "L'utilisateur <nom_utilisateur> a été crée".

        if cat /etc/passwd | grep "$nouvel_utilisateur" >/dev/null; then

            echo "L'utilisateur "$nouvel_utilisateur" a été créé."

            # Sinon, un message affiche "Erreur à la création de l'utilisateur <nom_utilisateur>". Dans tous les cas, le script continue.

        else

            echo "Erreur à la création de l'utilisateur $nouvel_utilisateur."

        fi

    fi

done
