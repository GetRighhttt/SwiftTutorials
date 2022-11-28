import Foundation
import UIKit
import SwiftUI

/*
 Closures are pretty much contained blocks of functionality that can be
 passed around in your code.
 
 Essentially, they are functions that can be passed around in your code.
 Very similar to lambdas in Kotlin.
 */
struct Student {
    var name: String
    var testScore: Int
}

let students = [Student(name:"Stefan", testScore:100),
               Student(name:"Ayesha", testScore:68),
               Student(name:"Vincent", testScore:69),
               Student(name:"Zion", testScore:80),
               Student(name:"Shawn", testScore:90),
               Student(name:"Senior", testScore:73),
               Student(name:"Junior", testScore:30),
               Student(name:"Freshie", testScore:40),
               Student(name:"KG", testScore:20)]

/**
 Student parenthesis are the parameters for the closure, and Bool is the return type. If there is nothing to return,
 we could use parenthesis as a placeholder which means Void.
 
 student in is essentially the parameter name.
 
 closures have a property with a name of a type that returns a value.
 We made a function below to show how similar the two are.
 
 closure syntax:
 { (parameters) -> return type in
 statements
 }
 */
var topStudentFilter: (Student) -> Bool = { student in // we could name student whatever we want
    return student.testScore > 80
}

/**
 Shorthand syntax is essentially using $0, $1, $2 for the number of parameters that exist within the closure.
 The more parameters that you have, you would just increase the number next to the dollar sign.
 
 Trailing closure syntax is mostly seen in SwiftUI. It's used when we can omit the parameter
 and open up {} for the code snippet instead when the closure is last.
 
 We have an example below.
 */
var lowStudentFilter: (Student) -> Bool = { $0.testScore < 70
}

/**
 We can see here that a function is very similar to a closure except it's a regular function.
 */
func topStudentFilter(student: Student) -> Bool {
    return student.testScore > 70
}

/**
 now let us show how we can pass around the closure.
 */
let topStudents = students.filter(topStudentFilter)
let bottomStudents = students.filter(lowStudentFilter)
let studentRanking = topStudents.sorted { $0.testScore > $1.testScore }

for topStudent in topStudents {
    print(topStudent.name) // Stefan, Shawn
}

for bottomStudent in bottomStudents { // Ayesha, Vincent, Junior, Freshie, KG
    print(bottomStudent.name)
}

/**
 We mainly use trailing closure syntax and escaping closures in SwiftUI. @escaping specifically when working with network requests and completion handlers.
 @escaping is when the closure needs to live on pass the life of the function that called it.
 */
