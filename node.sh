#<--------------node------------------->

npm config set proxy http://tms%5Cbanerjj:Jan%402019@tfsproxy.tfs.toyota.com:80
npm config set https-proxy http://tms%5Cbanerjj:Jan%402019@tfsproxy.tfs.toyota.com:80

#incase if you get 

URIError: URI malformed
    at decodeURIComponent (<anonymous>)
    at Url.parse (url.js:334:19)
    at Object.urlParse [as parse] (url.js:146:13)
    at Object.validateUrl [as validate] (C:\Program Files\nodejs\node_modules\npm\node_modules\nopt\lib\nopt.js:172:13)
    at validate (C:\Program Files\nodejs\node_modules\npm\node_modules\nopt\lib\nopt.js:221:24)
    at validate (C:\Program Files\nodejs\node_modules\npm\node_modules\nopt\lib\nopt.js:187:11)
    at C:\Program Files\nodejs\node_modules\npm\node_modules\nopt\lib\nopt.js:104:12
    at Array.map (<anonymous>)
    at C:\Program Files\nodejs\node_modules\npm\node_modules\nopt\lib\nopt.js:70:15
    at Array.forEach (<anonymous>)
C:\Program Files\nodejs\node_modules\npm\lib\npm.js:59
      throw new Error('npm.load() required')
      ^

Error: npm.load() required
    at Object.get (C:\Program Files\nodejs\node_modules\npm\lib\npm.js:59:13)
    at process.errorHandler (C:\Program Files\nodejs\node_modules\npm\lib\utils\error-handler.js:205:32)
    at process.emit (events.js:197:13)
    at process._fatalException (internal/process/execution.js:130:25)


edit in file
/c/Users/myusername
vim .npmrc
