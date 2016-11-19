//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//1. variables: let vs var
//let is defining constant, var is defining variables can be changed later
let state = "CA"
var city = "San Jose"


//2. String
let name = "Summer"
print("Hello " + name)


//3. Integer

var myInt = 8
print(myInt + 3)

//put Integer to String:
print("myInt has value \(myInt)")

var age = 20
print("My name is \(name), I am \(age) years old.")

//4. Double and Float
var a = 8.12

//or
var b: Double = 3.14
var c: Float = 3.1415
//if not declared, by default is Double for variables 
//convert int to double

print(Double(myInt) + a )


//5. Boolean
var gameOver = false

var d = 5.76
var num = 8
var result = Double(num) * d
print("The product of \(d) and \(num) is: \(result)")

//6. Array
var array = [20, 25, 2]
print(array[2])
print(array.count)
array.sort()
print(array)

var arr = [3.87, 7,1, 8.9]
arr.remove(at: 1)
arr.append(arr[0] * arr[1])
print(arr)

var mix = ["Summer", 20, true] as [Any]


//7. Dictionary

var dictionary = ["Computer" : "Something to play", "Coffee" : "Starbucks"]
print(dictionary["Computer"]!)
print(dictionary.count)
dictionary["Cup"] =  "to drink"
//create empty dictionary:
var book = [String : Double]()

var menu = ["Pizza" : 10.99, "Ice Cream" : 4.99, "Salad": 7.99]
print("The total cose for this meal is \(menu["Pizza"]! + menu["Ice Cream"]!)")


//8. if else statement
let age1 = 13
if age1 >= 18 {
    print("You can play")
} else {
    print("You are too young")
}


let userName = "Summer"
if userName == "Summer" {
    print("Hi \(userName)")
} else {
    print("Sorry, you are not allowed to login")
}

//generate random number
var dice = arc4random_uniform(6)
print(dice)





