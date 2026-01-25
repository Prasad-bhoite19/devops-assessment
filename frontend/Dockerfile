# ---------- Stage 1: Build ----------
FROM node:18-alpine AS build

WORKDIR /app

# Install dependencies (cached layer)
COPY package*.json ./
RUN npm install

# Copy source
COPY . .

# Build production assets
RUN npm run build


# ---------- Stage 2: Production ----------
FROM nginx:alpine

# Create non-root user
RUN addgroup -S app && adduser -S app -G app

# Remove default config
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy build output
COPY --from=build /app/dist /usr/share/nginx/html

# Set permissions
RUN chown -R app:app /usr/share/nginx/html

USER app

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
