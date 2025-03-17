#!/bin/bash

echo "Évaluation du modèle en cours..."

# Exécution du script d'évaluation
python models/v1/metrics.py > logs/evaluation.log 2>&1

# Vérification du succès
if [ $? -eq 0 ]; then
    echo "Évaluation terminée. Résultats disponibles dans logs/evaluation.log"
else
    echo "Erreur lors de l'évaluation !" >&2
    exit 1
fi
