// import JavaScriptCore

// // console.log(CryptoJS.HmacSHA1("Message", "Key"));

// let context = JSContext()!
// let result = context.evaluateScript("1 + 2 + 3")
// result?.toInt32() // 6

import JavaScriptCore
var jsContext = JSContext()
// set up exception handler for javascript errors
jsContext?.exceptionHandler = { context, exception in
    if let exc = exception {
        print("JS Exception:", exc.toString())
    }
}
// read the javascript files in and evaluate
if let jsSourcePath = Bundle.main.path(forResource: "./../crypto-min.js", ofType: "js") {
    do {
        let jsSourceContents = try String(contentsOfFile: jsSourcePath)
        jsContext?.evaluateScript(jsSourceContents)
    } catch {
        print(error.localizedDescription)
    }
}
