# Image de base Node.js 18 (Alpine pour la légèreté)
FROM node:18-alpine

# Définir le répertoire de travail [cite: 56]
WORKDIR /app

# Copier les fichiers de dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier tout le code source
COPY . .

# Exposer le port 3000 (remplace le 8080 de SpringBoot) [cite: 61]
EXPOSE 3000

# Commande de démarrage [cite: 63]
CMD ["node", "server.js"]
