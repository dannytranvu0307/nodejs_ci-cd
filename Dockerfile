# Sử dụng image Node.js phiên bản 16
FROM node:16

# Tạo thư mục làm việc trong container
WORKDIR /usr/src/app

# Sao chép file package.json và package-lock.json (nếu có) để cài đặt dependencies
COPY package*.json ./

# Cài đặt dependencies
RUN npm install

# Sao chép tất cả các file trong dự án của bạn vào thư mục làm việc trong container
COPY . .

# Mở cổng 3000 (nếu ứng dụng của bạn chạy trên cổng khác, hãy thay đổi số này)
EXPOSE 3000

# Lệnh để chạy ứng dụng Node.js (đảm bảo rằng file chính là index.js)
CMD ["node", "index.js"]
