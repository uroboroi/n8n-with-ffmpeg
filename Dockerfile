# Verwende das bestehende n8n-Image als Basis
FROM n8nio/n8n:latest

# Installiere ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

# Starte n8n wie gewohnt
ENTRYPOINT ["tini", "--", "docker-entrypoint.sh"]
CMD ["npm", "start"]
