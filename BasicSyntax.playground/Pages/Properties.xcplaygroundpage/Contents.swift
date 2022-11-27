import Foundation
import UIKit

/*
 Structs and classes have properties that they can use to achieve better results and
 set restraints.
 */

/**
 willset and didset are property observes that we can use to manipulate data.
 
 willset is used before data is changed and didset is used after.
 */
struct NewPerson {
    
    var height: String {
        
        // here we can call willset and didset in the struct
        willSet {
            changeUI(msg: "Changing from \(height) to \(newValue).")
        }
        
        // now didset
        didSet {
            changeUI(msg: "I just changed from \(oldValue) to \(height)")
        }
    }
    
    // we can also use getters and setters in classes and structs.
    var newHeight: String {
        get {
            return "\(height) + 2"
        }
    }
}

func changeUI(msg: String) {
    print(msg)
}

/**
 Changing from 5'10 to 6'0.
 I just changed from 5'10 to 6'0
 */
var stefan = NewPerson(height: "5'10")
stefan.height = "6'0"

print(
    stefan.newHeight
)
