# Берём официальный образ Nginx как основу
FROM nginx:latest

# Копируем наш index.html внутрь контейнера,
# заменяя стандартную страницу приветствия Nginx
COPY index.html /usr/share/nginx/html/index.html

# Открываем порт 80 (стандартный порт HTTP)
EXPOSE 80

# Запускаем Nginx в foreground-режиме (чтобы контейнер не завершался)
CMD ["nginx", "-g", "daemon off;"]