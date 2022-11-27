import Foundation
import UIKit

/*
 Here we will go over functions in Swift.
 ---------------------------------------------------------------------------------------------------------------------------
 */

/**
 Functions allow us to reuse code and adhere to clean code.
 They allow us to repeat blocks of code without having to write the same code over and over again.
 
 first we declare a function, then call it.
 */
func favoriteSport() {
    print("Basketball")
}

favoriteSport() // prints Basketball

/**
 The function below allows us to pass in a sport and it returns a string variable, which is the sport.
 */
func mySport(sport: String) -> String {
    return sport
}

print(mySport(sport: "Football")) // prints Football

/**
 We could also declare a function with no return type
 */
func thisSport(sport: String) {
    print("This is the sport: \(sport)")
}
thisSport(sport: "Soccer") // This is the sport: Soccer

/**
 Swift allows us to use external parameters to call when the function is called, and internal parameters for the function.
 
 We can also replace the myString parameter with an underscore, which means no parameter should be called.
 */
func myString(myString string: String) {
    print("Here \(string)")
}
myString(myString: ": The new string using 'myString'.") // Here : The new string using 'myString'.

/**
 with underscore.
 */
func newString(_ string: String) {
    print("Here \(string)")
}
newString(": no parameter called here.") // Here : no parameter called here.
