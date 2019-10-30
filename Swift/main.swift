import Foundation

let arg = CommandLine.arguments[1]  // Store first argument.

let greatTest = GreatTest()
greatTest.great()

print("Your input:", arg)
