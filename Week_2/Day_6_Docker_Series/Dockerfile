# Build stage
FROM node:22-alpine AS builder

WORKDIR /app

# Install dependencies
COPY package.json package-lock.json ./

RUN yarn install

# Copy all files and build
COPY . .
RUN yarn build

# Production stage
FROM node:22-alpine AS runner

# Create non-root user and group
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

WORKDIR /app

# Copy only necessary files from build stage
# COPY --from=builder /app/pages ./public
COPY --from=builder /app/.next ./.next
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json ./package.json

# Ensure app files are owned by non-root user
RUN chown -R appuser:appgroup /app

# Switch to non-root user
USER appuser

EXPOSE 3000

# Start the Next.js production server
CMD ["yarn","start"]