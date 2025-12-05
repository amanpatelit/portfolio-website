# Lightweight Nginx image
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML/CSS to nginx web root
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx (already default CMD in base image, but keeping for clarity)
CMD ["nginx", "-g", "daemon off;"]
