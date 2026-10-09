# Build Stage
FROM node:22-alpine AS builder

WORKDIR /app

COPY . .

RUN yarn install

# Production Stage
FROM node:22-alpine AS runner

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

WORKDIR /app

COPY --from=builder /app/ .

RUN chown -R appuser:appgroup /app

USER appuser

EXPOSE 3000

CMD [ "yarn","start" ]

HEALTHCHECK --interval=30s --timeout=5s --retries=3 --start-period=10s CMD curl --fail http://localhost:3000 || exit 1
