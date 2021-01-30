const fs = require("fs");
const path = require("path");

fs.readFile("./xssExtensions.txt", "utf-8", (err, data) => {
    if (err) throw err;
    const urlist = data.toString().replace(/\r\n/g, '\n').split('\n');
   
    urlist.forEach(YouTubeUrl => {
    	const extensionName = `${YouTubeUrl}`.split('/')[5];
    	console.log(`<li><a href="${YouTubeUrl}">${extensionName}</a></li><br>`);
    });
});


//<li><a href="${YouTubeUrl}">${extensionName}</a></li><br>*/ll
/*https://github.com/filedescriptor/untrusted-types
https://github.com/ollseg/ttt-ext/blob/master/manifest.json
https://github.com/JacobReynolds/xssHunterExtension
https://github.com/ayush20/hackbar
https://github.com/alex147/simple-xss-scanner
https://github.com/swoops/eval_villain*/