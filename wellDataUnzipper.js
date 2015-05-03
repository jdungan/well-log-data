var unzip = require('unzip');
//var fs = require('fs');
var fs = require('graceful-fs');
var fstream = require('fstream');
var path = require("path");
var request = require('request');

//unzipAndWriteDir("ks/");
unzipAndWriteRemote("http://www.kgs.ku.edu/WellLogs/01S02E/1020069094.zip",'test/');
//console.log( unzipAndStreamRemote("http://www.kgs.ku.edu/WellLogs/01S02E/1020069094.zip"));

//grabs remote file, unzips it and writes it locally
function unzipAndWriteRemote(fileName, writeFolder)
{
    var writeStream = fstream.Writer(writeFolder);

    console.log("Unzipping "+fileName + " to " + writeFolder);
     unzipAndStreamRemote(fileName)
      .pipe(writeStream);

}

//grabs remote file, unzips it and returns stream
function unzipAndStreamRemote(fileName)
{
    //console.log("Unzipping "+fileName );
   return request(fileName)
      .pipe(unzip.Parse());
}


//grabs local file, unzips it and writes it locally
function unzipAndWriteLocal(fileName)
{
    var readStream = fs.createReadStream(fileName); //'ks/1000079714.zip'
    var writeStream = fstream.Writer('ks/');

    console.log("Unzipping "+fileName);
    readStream
      .pipe(unzip.Parse())
      .pipe(writeStream);

}

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
                    unzipAndWriteLocal(file);
                }
                else {
                    //console.log(lasName+' already exists');
                }
            }
        });
    });
}