// index.js
const http = require('http');

const server = http.createServer((req, res) => {
  res.end('Hello from Node.js app inside Docker!');
});

const PORT = 3000;
server.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
