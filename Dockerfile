FROM docker.n8n.io/n8nio/n8n:1.68.0

WORKDIR /home/node

USER node

EXPOSE 5678

CMD ["n8n", "start"]
