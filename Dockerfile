# Use official lightweight Nginx image from Alpine
FROM nginx:alpine

# Remove default Nginx config & files
RUN rm -rf /usr/share/nginx/html/* \
    && rm -f /etc/nginx/conf.d/default.conf

# Copy your static site files
COPY html/ /usr/share/nginx/html/

# Copy custom Nginx config with security headers
COPY nginx-conf/default.conf /etc/nginx/conf.d/default.conf

# Expose port (informational)
EXPOSE 80

# Healthcheck (good practice)
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD wget --quiet --tries=1 --spider http://localhost/ || exit 1

# Run Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
