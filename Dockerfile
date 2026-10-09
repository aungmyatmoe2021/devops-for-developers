# Build Stage
FROM node:22-alpine AS builder

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install

COPY . .

RUN yarn build

# Production Stage
FROM node:22-alpine AS runner

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

WORKDIR /app

COPY --from=builder /app/.next ./.next
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json ./package.json
COPY --from=builder /app/yarn.lock ./yarn.lock

RUN chown -R appuser:appgroup /app

USER appuser

EXPOSE 3000

CMD [ "yarn","start" ]

HEALTHCHECK --interval=30s --timeout=5s --retries=3 --start-period=10s CMD curl --fail http://localhost:3000 || exit 1
