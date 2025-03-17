#!/bin/bash

echo "Démarrage du prétraitement des données..."

# Exécution du script de feature engineering
python utils/preprocessed.py

# Vérification du succès
if [ $? -eq 0 ]; then
    echo "Prétraitement terminé avec succès."
else
    echo "Erreur dans le prétraitement !" >&2
    exit 1
fi
