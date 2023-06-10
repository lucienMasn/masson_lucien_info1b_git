# Module 164 du 2023.06.11 -- Masson Lucien

## Connexion entre Python et MySql


## Mode d'emploi
* Démarrer le serveur MySql (uwamp ou xamp ou mamp, etc)
* Dans "PyCharm", importer la BD à partir du fichier DUMP
    * Ouvrir le fichier "database/1_ImportationDumpSql.py"
    * Cliquer avec le bouton droit sur l'onglet de ce fichier et choisir "run" (CTRL-MAJ-F10)
    * En cas d'erreurs : ouvrir le fichier ".env" à la racine du projet, contrôler les indications de connexion pour la
      bd.
* Test simple de la connexion à la BD
    * Ouvrir le fichier "database/2_test_connection_bd.py"
    * Cliquer avec le bouton droit sur l'onglet de ce fichier et choisir "run" (CTRL-MAJ-F10)
* Démarrer le microframework FLASK
    * Dans le répertoire racine du projet, ouvrir le fichier "run_mon_app.py"
    * Cliquer avec le bouton droit sur l'onglet de ce fichier et choisir "run" (CTRL-MAJ-F10)

## Lancement de l'interface WEB
* Une fois votre serveur MySql lancé, rendez vous dans pycharm.
    * Ouvrir le fichier "drun_mon_app.py" et le run (CTRL-MAJ-F10)
    * Ensuite, vous pouvez vous connecter sur votre interface WEB (http://127.0.0.1:5005)
      * Votre site est maintenant fontionelle !

