const express = require('express');
const cookieParser = require('cookie-parser'); // Import thư viện cookie-parser

const app = express();
const port = 3000;

// Sử dụng cookie-parser middleware để xử lý cookie
app.use(cookieParser());

app.get('/', (req, res) => {
  // Đặt cookie với nội dung "hello" và thuộc tính httpOnly là true
  res.cookie('myCookie', 'helloccacaascsa', { httpOnly: true });

  res.send('Hello, World! Ứng dụng Express đang chạy trên cdadadaổng 3000.');
});

app.listen(port, () => {
  console.log(`Ứng dụng Express đang lắng nghe trên cổng ${port}`);
});
