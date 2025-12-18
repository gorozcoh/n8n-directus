FROM n8nio/n8n:2.0.2

USER root
RUN apk --update add python3 make g++  # Dependencias para npm builds
RUN npm install -g npm@latest  # Actualiza npm para evitar issues
RUN npm install -g @directus/n8n-nodes-directus @docuseal/n8n-nodes-docuseal  # Instala como root
USER node

# Configuración básica de n8n (opcional, ajusta según necesidades)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin@corazonistamedellin.com.co
ENV N8N_BASIC_AUTH_PASSWORD=*Lili_David_2007*
# ENV WEBHOOK_URL=http://localhost:5678
# ENV N8N_HOST=0.0.0.0
# ENV N8N_PORT=5678

CMD ["n8n", "start"]
