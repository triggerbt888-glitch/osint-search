# SearXNG-контейнер для OSINT_AGENT (Render free / любой Docker-хостинг).
# На Render задай env SEARXNG_BIND_ADDRESS=0.0.0.0:10000 — порт 10000
# стандартный для Render, так платформа гарантированно найдёт сервис.
FROM searxng/searxng:latest

# Свой конфиг: JSON API включён, лимитер выключен.
COPY settings.yml /etc/searxng/settings.yml
