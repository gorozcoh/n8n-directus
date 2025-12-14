FROM n8nio/n8n:latest

USER root
RUN apk --update add python3 make g++
USER node

RUN npm install -g n8n-nodes-directus
