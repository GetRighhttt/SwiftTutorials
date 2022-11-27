import Foundation
import UIKit

/*
 -------------------------------------------------------------------------------------------------------------------
 Here we will start to discuss intermediate topics such as: Arrays, Dictionaries,
 Conditionals, loops, switch statements, functions, optionals, and enums.
 -------------------------------------------------------------------------------------------------------------------
 */

/**
 Arrays let you group lots of values together into a single collection, and access them by position.
 Swift uses type inference to figure out what data is held.
 
 We can use the position(index) of the item in the array to access the value.
  
 The first item in an array starts at position 0.
 
 It still is best practice to specify the type, so that is what we will do:
 */
var theseNumbers: [Int] = [1, 4, 5, 2, 1, 8, 10] // array of integers
theseNumbers[0] // 1
theseNumbers[1] // 4
theseNumbers[2] // 5
theseNumbers[3] // 2
theseNumbers[4] // 1

type(of: theseNumbers) // prints out the type of the array - Array<Int>.Type

/**
 Swift will not allow us to assign the values in an array later without stating some value.
 
 To do this, we can declare an empty array, then fill it later:
 */
var ages: [Int] = [] // can also do this: [Int]()

/**
 We can add arrays together:
 */
var bothNumbers: [Int] = [1, 4, 5, 2, 1, 8, 10] // array of integers
var both = theseNumbers + bothNumbers

print(both) // [1, 4, 5, 2, 1, 8, 10, 1, 4, 5, 2, 1, 8, 10]

/**
 There are also many methods we can use to manipulate arrays, but we will discuss that later on.
 
 It's essentially the same methods we use in other programming languages...
 -----------------------------------------------------------------------------------------------------------------
 */

/*
 Dictionaries.
 */

/**
 Dictionaries are like arrays, except you access values with the key you specify.
 
 They're like object manipulation in JS.
 
 Here let's see an example of a person and their favorate programming languages.
 */
var person = ["first": "Stefan",
              "last": "Bayne",
              "firstLang": "Swift",
              "secondLang": "JS",
              "thirdLang": "Kotlin"]

/**
 Output:
 ["first", "firstLang", "secondLang", "last", "thirdLang"] - keys
 ["Stefan", "Swift", "JS", "Bayne", "Kotlin"] - values
 */
print(person.keys)
print(person.values)

person["first"] // Stefan
person["firstLang"] // Swift
person["last"] // Bayne
person["secondLang"] // JS
/**
 -----------------------------------------------------------------------------------------------------------------
 */

/*
 Conditionals and Loops.
 */

/**
 
 */
