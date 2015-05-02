var unzip = require('unzip');
//var fs = require('fs');
var fs = require('graceful-fs');
var fstream = require('fstream');
var path = require("path");

unzipAndWriteDir("ks/");

function unzipAndWriteDir(p){

    var dir = fs.readdir(p, function(err,files){
        if (err) {
            throw err;
        }

        files.map(function (file) {
            return path.join(p, file);
        }).filter(function (file) {
            return fs.statSync(file).isFile();
        }).forEach(function (file) {
            if(path.extname(file)==".zip"){
                var zipName = file.split(".");
                var lasName = zipName[0] + '.las';
                if(!fs.existsSync(lasName)) {
                    //console.log("%s (%s)", file, path.extname(file));
                    unzipAndWrite(file);
                }
                else {
                    //console.log(lasName+' already exists');
                }
            }
        });
    });
}

function unzipAndWrite(fileName)
{
    var readStream = fs.createReadStream(fileName); //'ks/1000079714.zip'
    var writeStream = fstream.Writer('ks/');

    console.log("Unzipping "+fileName);
    readStream
      .pipe(unzip.Parse())
      .pipe(writeStream);

}