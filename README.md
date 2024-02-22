# Importer une infrastructure existante avec terraform apply

Rappel : Terraform peut importer l'infrastructure existante. Cela vous permet de récupérer les ressources que vous avez créées par d'autres moyens et de les gérer sous Terraform.

#### Etude de cas :  Importation d'une instance EC2 AWS

1. Identifiez l'infrastructure à importer ; 

![alt text](<image/1. identification de la ressource à importer dark.png>)

2. Récupérez les configurations l’infrastructure ; 

![alt text](<image/2. recuperation des parametres de l'infra dark.png>)

3. Déclarez l'importation ; 

![alt text](<image/3. declaration de l'importation dark.png>)

4. Déclarez la ressource (Important : Définir tous les arguments nécessaires, sinon l'infrastructure sera mise à jour lors du apply) correspondante à l'infrastructure à importer dans notre cas EC2 ; 

![alt text](<image/4. declaration ressource dark.png>)

5. Taper la commande ```terraform plan``` :  si le plan contient à la fois « import » et « change », vérifiez la définition des arguments ;

![alt text](<image/5. terraform plan dark.png>)
![alt text](<image/5. info plan  dark.png>)

6. Taper la commande ```terraform apply --auto-approve``` 

![alt text](<image/6. terraform apply dark.png>) 
![alt text](<image/6. info apply dark.png>)
