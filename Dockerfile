FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY logo-emotion.svg /usr/share/nginx/html/logo-emotion.svg
COPY emotion-logo.jpeg /usr/share/nginx/html/emotion-logo.jpeg
EXPOSE 80
