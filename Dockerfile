# 1. On part d'une image Python officielle très légère
FROM python:3.9-slim

# 2. On définit le dossier de travail dans le conteneur
WORKDIR /app

# 3. On copie nos fichiers locaux dans le conteneur
COPY app.py .
COPY test_app.py .

# 4. On installe les outils nécessaires
RUN pip install pytest

# 5. La commande par défaut quand on lancera le conteneur
# Ici, on veut qu'il lance les tests par défaut
CMD ["pytest", "test_app.py"]
