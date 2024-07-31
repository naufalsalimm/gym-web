# Menggunakan image nginx resmi dari Docker Hub
FROM nginx:alpine

# Menghapus konfigurasi default NGINX
RUN rm /etc/nginx/conf.d/default.conf

# Menyalin konfigurasi NGINX khusus
COPY nginx.conf /etc/nginx/nginx.conf

# Menyalin file HTML dan aset statis ke direktori yang digunakan oleh NGINX
COPY . /usr/share/nginx/html

# Mengekspos port 80 untuk akses HTTP
EXPOSE 80

# Menjalankan NGINX di foreground
CMD ["nginx", "-g", "daemon off;"]
