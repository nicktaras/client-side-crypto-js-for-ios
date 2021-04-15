
## Steps (with Yarn or NPM)

1. To install dependancies run ```` yarn ```` 
2. Then create output file ```` yarn build ````

## Dev Notes:

Using this method will allow developers to use Swift IOS JS Core Module.

Please see example below:

````

jsContext?.evaluateScript("var morseMessage = new Morse.MorseMessage()")
print(jsContext!.evaluateScript("morseMessage.translate('abc')"))

````

## Reading

- https://stackoverflow.com/questions/48354804/how-to-import-modules-in-swifts-javascriptcore
- https://www.raywenderlich.com/1227-javascriptcore-tutorial-for-ios-getting-started


