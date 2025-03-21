# ynov-tf-azure

Repository de fichiers TF pour Azure


## **Connexion à `Azure`**

### Connexion à celui du professeur

```shell
az login --service-principal-u $CLIENT_ID -p $CLIENT_SECRET --tenant $TENANT_ID
```
Cependant j'ai créé un script `login_azure.sh` :
```shell
#!/bin/bash

# Charger le fichier .env
export $(grep -v '^#' .env | xargs)

# Se connecter à Azure avec le compte du prof
az login --service-principal -u "$CLIENT_ID" -p "$CLIENT_SECRET" --tenant "$TENANT_ID"

```
Avec les informations `Azure` contenu dans le `.env`  
Lancement du script avec la commande `./login_azure.sh`  

La variable `Prefix` a été modifié dans le fichier `variables.tf`pour être plus personnalisée : 

```js
variable "prefix" {
  default = "Jeremy-Bilger-ci-cd"
}
```

## **Commandes `Terraform`**

```shell
terraform init -upgrade
```

```shell
terraform validate
```

```shell
terraform plan
```

```shell
terraform apply -auto-approve
```

```shell
terraform refresh
```

```shell
terraform destroy -auto-approve
```