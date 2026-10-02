# AGENTS.md — n8n con Ghostscript

Un solo `Dockerfile`: imagen `n8nio/n8n` (versión fijada) + Ghostscript
instalado con el apk estático sacado de una Alpine (etapa 1).

## Reglas generales
- Responde siempre en español.
- Si una tarea es ambigua o arriesgada, pregunta antes de hacerla.

## Git
- Trabaja en la rama 'agente', nunca hagas commit ni push directamente a main.

## Reglas del proyecto
- No tienes Docker en este VPS: no puedes construir ni probar la imagen.
  Explica cada cambio y qué debe comprobar Fredo al construirla.
- Mantén la versión de n8n fijada (nada de `latest`) y el `USER node` final.
- Esta imagen la usan servicios en producción: cambios mínimos y justificados.
