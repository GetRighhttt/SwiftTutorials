//: [Previous](@previous)

import Foundation
import UIKit

// these tutorials assume you are somewhat experienced with coding and want to learn swift

/*
 --------------------------------------------------------------------------------------------------------------------------
 First we will discuss variables, operators and String interpolation.
 
 Swift only has variables - var, and constants - let.
 (Variables can be changes, lets cannot basically.)
 The benefit of separating these terms allows for cleaner code and easy reusability.
 
 All of the operators of other programming languages are the same in Swift.
 
 Also, String interpolation is used by using this notation: "\()".
 --------------------------------------------------------------------------------------------------------------------------
 */

/**
 Each variable must specify a type, which Swift has type inference when a variable is declared.
 Type inference is inferring the type of variable.
 
 Below is a variable of type String (String of characters.). Also, swift Strings are case-sensitive.
 */

var name: String // must be capital after the colon.
name = "Bob"

var firstName = "Stefan"

/**
 constant - Swift recommends constants over variables, and also if you try to use the same name for the variable.
 */
let lastName = "Bayne"

/**
 This is an example of String interpolation; basically adding string variables inside of a print statement.
 
 This is common in other languages, and extremely important for manipulating data in development.
 */
print("\(firstName) \(lastName)") // prints - Stefan Bayne

var age: Int
age = 27

print("\(firstName) \(lastName) is \(age).") // prints - Stefan Bayne is 27.

/**
 Types of Data in Swift.
 
 Note: specifying the data type is preferred as well as Swift prefers doubles.
 */
let thisName: String = "Bob Myers"
let thisAge: Int = 55
let hisMoney: Float = 100.00
let theirMoney: Double = 234232.32324343
let areRich: Bool = false

/**
 Operators are the mathematical symbols we learned in grade school.
 */
var thisNumber = 20
thisNumber = thisNumber + 10 // addition - output = 30
thisNumber = thisNumber - 5 // subtraction - output = 25
thisNumber = thisNumber * 10 // multiplication - output = 250
thisNumber = thisNumber / 2 // division - output = 125

var number2 = 20
number2 += 10 // another way to use addition - output 30
number2 -= 20 // another way to use subtraction - output 10
number2 *= 20 // another way to use multiplication - output 200
number2 /= 20 // another way to use division - output 10

var finalNumber = thisNumber % number2 // modulus(remainder) operator
print(finalNumber) // output - 5

/**
 We also have operators we can use to compare values: > , < , >= , <=, ==, ===, !=, !
 
 Below these will return either true or false based on the condition.
 */
thisNumber > number2 // greater than - true
thisNumber < number2 // less than - false
thisNumber == number2 // equal to - false
thisNumber >= number2 // greater than or equal to - true
thisNumber <= number2 // less than or equal to - false
thisNumber != number2 // not equal to - true

/**
 The not operator means the opposite of what is stated.
 */
var isAMan = false
isAMan // output - false
!isAMan // output - true


//: [Next](@next)
