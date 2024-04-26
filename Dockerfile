# Utilise une image de base Python officielle
FROM python:3.9-slim

# Définit le répertoire de travail
WORKDIR /app

# Copie les fichiers requis dans le conteneur
COPY . /app

# Installe Flask
RUN pip install flask

# Expose le port sur lequel l'application s'exécutera
EXPOSE 5000

# Commande pour exécuter l'application
CMD ["python", "./app.py"]