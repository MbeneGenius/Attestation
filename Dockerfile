FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY ["Attestation de réception de service GeniusPay.html", "/usr/share/nginx/html/index.html"]

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
