import JavaScriptCore

// A series of tests to review how JSCore functions
// within Swift - managing Javascript.

//print ("Example 1: Hello World")
//// Js Context Class
//let context: JSContext = JSContext()
//// Simple Hello World Example
//let result1: JSValue = context.evaluateScript("'Hello Javascript'")
//print (result1)
//
//print ("Example 2: Function")
//// Js Context Class
//let context2: JSContext = JSContext()
//// Simple Trigger of function Example
//context2.evaluateScript("function sum(param1, param2) { return param1 + param2; }")
// // js method name by calling the method
//let result2 = context2.evaluateScript("sum(10, 10)")
//print (result2 as Any) // Output 30
//
//print ("Example 3: Read from Js File")
//
//let context3: JSContext = JSContext()
//
//let fileLocation = Bundle.main.path(forResource: "index", ofType: "js")!
//
//print(fileLocation)
//let jsSource : String
//  do {
//    jsSource = try String(contentsOfFile: fileLocation)
//  } catch {
//    jsSource = "Nope."
//  }
//
//context3.evaluateScript(jsSource)
//let functionFullname = context3.objectForKeyedSubscript("getFullname")
//let result3 = functionFullname?.call(withArguments: ["Will", "I AM"])
//print(result3 as Any)
//
//print ("Example 4: Read from Js File Library Value")
//
//let context4: JSContext = JSContext()
//
//let fileLocationLib = Bundle.main.path(forResource: "loDash", ofType: "js")!
//
//print(fileLocationLib)
//let jsSourceLib : String
//  do {
//    jsSourceLib = try String(contentsOfFile: fileLocationLib)
//  } catch {
//    jsSourceLib = "Nope."
//  }
//
//context4.evaluateScript(jsSourceLib)
//let result4: JSValue = context4.evaluateScript("LARGE_ARRAY_SIZE")
//print((result4 as Any))

//print ("Example 5: Read from Js File Library Function")
//
//let context5: JSContext = JSContext()
//
//let fileLocationLibFunc = Bundle.main.path(forResource: "loDash", ofType: "js")!
//
//print(fileLocationLibFunc)
//let jsSourceLibFunc : String
//  do {
//    jsSourceLibFunc = try String(contentsOfFile: fileLocationLibFunc)
//  } catch {
//    jsSourceLibFunc = "Nope."
//  }
//
//context5.evaluateScript(jsSourceLibFunc)
//let loDash = context5.objectForKeyedSubscript("isLength")
//let result5 = loDash?.call(withArguments: ["Testing"])
//print((result5 as Any))

//print ("Example 6: Read from Js File Minified Library Function")
//
//let context6: JSContext = JSContext()
//
//let fileLocationLibFuncMin = Bundle.main.path(forResource: "loDash.min", ofType: "js")!
//
//print(fileLocationLibFuncMin)
//let jsSourceLibFuncMin : String
//  do {
//    jsSourceLibFuncMin = try String(contentsOfFile: fileLocationLibFuncMin)
//  } catch {
//    jsSourceLibFuncMin = "Nope."
//  }
//
//context6.evaluateScript(jsSourceLibFuncMin)
//let loDashMin = context6.objectForKeyedSubscript("isLength")
//let result6 = loDashMin?.call(withArguments: ["Testing"])
//print((result6 as Any))

print ("Example 7: Read from Js File Library Min Value")

let context7: JSContext = JSContext()

let fileLocationLibMin = Bundle.main.path(forResource: "loDash.min", ofType: "js")!

print(fileLocationLibMin)
let jsSourceLibMin : String
  do {
    jsSourceLibMin = try String(contentsOfFile: fileLocationLibMin)
  } catch {
    jsSourceLibMin = "Nope."
  }

context7.evaluateScript(jsSourceLibMin)
let result7: JSValue = context7.evaluateScript("_.add(22, 20)")
print((result7 as Any))






