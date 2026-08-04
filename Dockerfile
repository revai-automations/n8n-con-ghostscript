FROM n8nio/n8n:latest
   USER root
   RUN apk add --no-cache ghostscript
   USER node
