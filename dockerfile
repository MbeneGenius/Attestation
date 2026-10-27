
FROM nginx:alpine

# Supprimer la page par défaut de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copier l'application HTML
COPY index.html /usr/share/nginx/html/index.html

# Exposer le port HTTP
EXPOSE 80

# Démarrer Nginx au premier plan
CMD ["nginx", "-g", "daemon off;"]
