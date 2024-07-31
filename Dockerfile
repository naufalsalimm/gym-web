FROM nginx:alpine

# Copy custom configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Copy static website files
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
