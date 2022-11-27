import Foundation
import UIKit

/*
 Optionals - an optional variable we can use if we do not know the return type,
 or if the info exists.
 
 We have to unwrap these optionals with the ! "NOT" operator.
 */

/**
 Below is an example of an optional without unwrapping the value, and setting the string to nil, so it should print nil.
 */
var myString:String? = nil

if myString != nil {
   print(myString)
} else {
   print("myString has nil value") // output - myString has nil value
}

/**
 Below the code prints out as an optional because it was not unwrapped properly.
 */
var myString2:String?

myString2 = "Hello, Swift 4!"

if myString2 != nil {
   print(myString2)
} else {
   print("myString has nil value") // output - Optional("Hello, Swift 4!")
}

/**
 Below is the example of the code unwrapped properly with the not operator in the condition.
 */
var myString3:String?

myString3 = "Hello, Swift 4!"

if myString3 != nil {
   print(myString3)
} else {
   print("myString has nil value") // output - Hello, Swift 4!
}

/**
 Lastly, we can specify the automatic unwrapping of a value by adding a not operator to the declaration initially.
 */
var myString4:String!
myString4 = "Hello, Swift 4!"

if myString4 != nil {
   print(myString4)
} else {
   print("myString has nil value")
}
