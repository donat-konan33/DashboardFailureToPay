#!/bin/bash

echo "Démarrage de l'entraînement du modèle..."

# Exécution du script d'entraînement
python models/v1/train.py > logs/training.log 2>&1

# Vérification du succès
if [ $? -eq 0 ]; then
    echo "Modèle entraîné avec succès et enregistré."
else
    echo "Échec de l'entraînement !" >&2
    exit 1
fi
