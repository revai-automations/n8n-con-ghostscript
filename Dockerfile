# Etapa 1: sacar apk de una Alpine normal
FROM alpine:latest AS apk
RUN apk add --no-cache apk-tools-static

# Etapa 2: n8n + ghostscript
FROM n8nio/n8n:latest
USER root

COPY --from=apk /sbin/apk.static /sbin/apk.static
COPY --from=apk /etc/apk/keys /etc/apk/keys

RUN ALP=$(cut -d. -f1,2 /etc/alpine-release 2>/dev/null || echo 3.22) && \
    /sbin/apk.static \
      -X https://dl-cdn.alpinelinux.org/alpine/v$ALP/main \
      -X https://dl-cdn.alpinelinux.org/alpine/v$ALP/community \
      -U --allow-untrusted --initdb add ghostscript && \
    gs --version

USER node
