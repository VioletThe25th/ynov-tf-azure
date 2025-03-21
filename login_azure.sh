#!/bin/bash

# Charger le fichier .env
export $(grep -v '^#' .env | xargs)

# Se connecter à Azure avec le compte du prof
az login --service-principal -u "$CLIENT_ID" -p "$CLIENT_SECRET" --tenant "$TENANT_ID"
