FROM n8nio/n8n:latest

# Configurações de ambiente
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV NODE_ENV=production
ENV WEBHOOK_URL=https://n8n-maria-eduarda.onrender.com/

# Expor porta
EXPOSE 5678

# Comando de inicialização
CMD ["n8n"]

