import Foundation
import UIKit

/*
 Structs: complex data types made up of multiple values. They are common in SwiftUI for modeling
 JSON responses, and acting as a data source for manipulation.
 
 Structs are immutable in Swift, so they have a fixed value and we can't change them.
 
 Also - static keyword is used to ensure a variable or method belongs to that struct or
 class.
 
 public     declarations are accessible from everywhere
 private    declarations are accessible only within the defined class or struct
 fileprivate    declarations are accessible only within the current swift file
 internal     declarations are accessible only within the defined module (default)
 */

/**
 This is how we declare a struct:
 
 We can also add methods to structs as well. Methods are functions inside of Structs are Classes.
 */
struct Person {
    var clothes: String
    var height: String
    
    func getDetails() {
        print("I'm wearing \(clothes) and I'm \(height) tall.")
    }
}

let stefan = Person(clothes: "Balenciaga", height: "5'10")

/**
 We can access the values of the struct by using dot notation:
 */
print(stefan.clothes) // Balenciaga
print(stefan.height) // 5'10

var stefanCopy = stefan
stefanCopy.clothes = "H&M"
print(stefan) // Person(clothes: "Balenciaga", height: "5\'10")

print(stefanCopy) // Person(clothes: "H&M", height: "5\'10")

/**
 output:
 
 I'm wearing Balenciaga and I'm 5'10 tall.
 I'm wearing H&M and I'm 5'10 tall.
 */
stefan.getDetails()
stefanCopy.getDetails()
