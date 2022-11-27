import Foundation
import UIKit

/*
 -------------------------------------------------------------------------------------------------------------------
 Here we will start to discuss intermediate topics such as: Arrays, Dictionaries,
 Conditionals, loops, switch case statements.
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
 Conditionals and loops in Swift are a lot like what they are in other languages.
 
 Condtionals basically execute when only a condition, or set of conditions are met.
 
 We use if-else, or else-if for basic examples.
  */
var result: String
var newPerson = "hater"

if newPerson == "hater" {
    result = "they hate"
} else if newPerson == "no hate" {
    result = "not a hater"
} else {
    result = "neutral"
}
print(newPerson) // prints hater because newPerson is equal to "hater"

/**
 We can ask swift to evaluate as many conditions as you want, however it is not usually recommended.
 */
var newAges = true
var newerAge = true
var ageResult: Bool

if newAges && newerAge {
    ageResult = true // output - true
} else if !newAges && !newerAge {
    ageResult = false
} else {
    ageResult = false
}
 /**
  Loops are used when you want to repeat a block of code for as long as a condition is true.
  
  Loops are pretty consistent across all languages, except in swift, we have something called a
  "Close range operator(...)" that we can use to specify a range we want to loop through.
  
  We also have a "half open range operator" - ..<
  Below we have a FOR loop that loops from a range of 1 to 20 and finishes when 20 loops is reached.
  */
for i in 1...20 {
    print("\(i) * 20 is \(i * 20)")
}
/**
 1 * 20 is 20
 2 * 20 is 40
 3 * 20 is 60
 4 * 20 is 80
 5 * 20 is 100
 6 * 20 is 120
 7 * 20 is 140
 8 * 20 is 160
 9 * 20 is 180
 10 * 20 is 200
 11 * 20 is 220
 12 * 20 is 240
 13 * 20 is 260
 14 * 20 is 280
 15 * 20 is 300
 16 * 20 is 320
 17 * 20 is 340
 18 * 20 is 360
 19 * 20 is 380
 20 * 20 is 400
 
 We can also use underscores when we don't want to specify a value in the loop:
 */
var thisExample = 30
for _ in 1...3 {
    print("\(thisExample)")
}
/**
 30
 30
 30
 */

/* half open range operator that is usally better to use for arrays. */
for i in 1..<4 {
    print("The number is \(i)")
}
/**
 The number is 1
 The number is 2
 The number is 3
 */

/**
 Typically we use for loops to loop through arrays, or other collections of data.
 
 Below:
 The song is broke
 The song is here
 The song is collection
 */
var songs = ["broke", "here", "collection"]

for song in songs {
    print("The song is \(song)")
}

/**
 We can also use count method for arrays to specify if we want the for loop to loop the total items in an array
 
 Below:
 Item 1
 Item 2
 Item 3
 Item 4
 Item 5
 Item 6
 Item 7
 Item 8
 Item 9
 */
var myNumbers = [1,2,3,4,5,6,7,8,9]
for i in 0..<myNumbers.count {
    print("Item \(myNumbers[i])")
}

/**
 The last type of loop we will discuss that repeats until you tell it to stop, is called a WHILE loop.
 
 These are typically used for game loops.
 
 Below:
 Counter is now 0
 Counter is now 1
 Counter is now 2
 Counter is now 3
 */
var counter = 0
while true {
    print("Counter is now \(counter)")
    counter += 1
    
    if counter == 4 { // 4 loops
        break // breaks the loop
    }
}

/**
 Lastly, we have something called a switch case statement.
 
 It's basically an advanced form of an if statement that we can use to check multiple cases, or conditions.
 
 With switch statements, you state what variable you want to check, and then provide a list of possible outcomes
 for that variable.
 
 After it is done, you break the switch.
 */
var aCounter = 5
switch aCounter {
case 0:
    print("0")
case 1:
    print("1")
case 2:
    print("2")
default:
    print("Greater than 2") // outputs
}
