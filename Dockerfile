# ─────────────────────────────────────────────
# Dockerfile — CS Department Static Website
# Serves the site using Nginx (Alpine variant)
# ─────────────────────────────────────────────

# Use official lightweight Nginx image
FROM nginx:alpine

# Remove default Nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy entire website into the Nginx web root
COPY . /usr/share/nginx/html

# Copy custom Nginx config (optional — uses default if absent)
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Nginx runs as foreground process by default in the official image
CMD ["nginx", "-g", "daemon off;"]
