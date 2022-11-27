import Foundation
import UIKit

/*
 Classes: very similar to structs except there are a few key differences -
 
 1. need to write your own initializers.
 2. classes hold state while structs don't.
 3. classes practice inheritance, which means they can build on top of eachother.
 4. an instance of a class is called an object, and the same in memory.
 */

/**
 Example:
 
 classes have to have an initializer, or be declared as optionals, which we can use the Init() method for.
 */
class Person {
    var fashion: String
    var height: String
    
    // self keyword is necessary when working with CLOSURES.. it's similar to "this" in java.
    init(fashion: String, height: String) {
        self.fashion = fashion
        self.height = height
    }
}

/**
 Here is how we call information in a class a declare an object of a class
 */
var stefan = Person(fashion: "Balenciaga", height: "5'10")
print(
    stefan.fashion // Balenciaga
)
print(
    stefan.height // 5'10
)

/**
 Here is an example of inheritance.
 */
class Singer {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sing() {
        print("hahahahaha")
    }
}

/**
 This is how a class extends or builds upon another class.
 */
class RandBSinger: Singer {
    override func sing() {
        print("Here I am!!!")
    }
}

var bob = RandBSinger(name: "Bob", age: 25)
print(
    bob.name // Bob
)
print(
    bob.age // 25
)
bob.sing() // Here I am!!!

/**
 Lastly, we will show how to use another variable in an init block, and call the super keyword.
 */
class NewestSinger : Singer {
    var noiseLevel: Int
    
    init(name: String, age: Int, noiseLevel: Int) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }
    
    override func sing() {
        print("Overriden")
    }
}

var abob = NewestSinger(name: "aBob", age: 30, noiseLevel: 30)
print(
    abob.name // aBob
)
print(
    abob.age // 30
)
print (
    abob.noiseLevel // 30
)
abob.sing() // Overriden
