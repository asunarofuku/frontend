FROM oven/bun:alpine AS base
WORKDIR /app

COPY . .

RUN bun install
RUN bunx --bun astro build

ENV HOST=0.0.0.0
ENV PORT=4321
EXPOSE 4321
CMD bun ./dist/server/entry.mjs
