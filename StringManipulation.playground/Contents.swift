//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var newString = str + " Summer"

for character in newString.characters {
    print(character)
}


//NSString has more functions that String doesn't have
let newTypeString = NSString(string: newString)

newTypeString.substring(to: 5)

newTypeString.substring(from: 4)

NSString(string: newTypeString.substring(from: 6)).substring(to: 3)

newTypeString.substring(with: NSRange(location: 6, length: 3))

if newTypeString.contains("Summer") {
    print("new type string contains Summer")
}

newTypeString.components(separatedBy: " ")
newTypeString.uppercased
newTypeString.lowercased