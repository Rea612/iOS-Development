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

//9. generate random number
var dice = arc4random_uniform(6)
print(dice)


//10. loop
var i = 0
while  i < 10 {
    print(i)
    i+=1
}

var array1 = [1, 5, 2, 38, 20, 56]
var len = array1.count
var counter = 0
while counter < len {
    array1[counter] += 1
    counter+=1
}
    print(array1)
for number in array1 {
    print(number)
}

var names = ["Summer", "Jessy", "Judy", "Wendy"]
for member in names {
    print("Hi " + member + "!")
}

var arr1 = [2, 6, 9, 10, 24, 29]
for (index, value) in arr1.enumerated() {
    arr1[index] = value / 2
}
print(arr1)

//11. class and object

class Ghost {
    var isAlive = true
    
    var strength = 9
    
    func kill(){
        isAlive = false
    }
    
    func isStrong() -> Bool {
        if strength > 10 {
             return true
        }
        else {
            return false
    }
}
}
var ghost = Ghost()
print(ghost.isAlive)
ghost.strength = 20
print(ghost.strength)
ghost.kill()
print(ghost.isAlive)
print(ghost.isStrong())

//12. Optional variable
var inputNum : Int?
//question mark means you are not sure about input number
print(inputNum)

/*
In some situation that you don't know if user input can be valid or not, so use optional varialbe should be careful like below:
*/
//var userEnteredText = "3"
var userEnteredText = "three"
var userEnteredInteger = Int (userEnteredText)
if var inputAge = userEnteredInteger {
    print(inputAge * 2)
} else {
    //show error message saying user's input is not valid
    print("Please use numbers instead of letters")
}

























