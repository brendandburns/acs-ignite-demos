var http = require('http');

const server = http.createServer((req, res) => {
	console.log(req.url);
        res.setHeader('Content-type', 'text/html');
	res.end('<h1>Hello Ignite!</h1>\n');
});


server.listen(80, (err) => {  
  if (err) {
    return console.log('something bad happened', err);
  }

  console.log(`server is listening.`);
});
