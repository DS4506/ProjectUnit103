import UIKit

let studentNames: [String] = ["Dave", "Epifanio", "Roy", "Will", "Brandy"]

let studentGrades:[String:[Int]] = [
    "Dave":[100,99,97,100,],
    "Epifanio":[95,92,88,90,],
    "Roy":[78,82,75,80,],
    "Will":[88,92,85,90,],
    "Brandy":[95,92,88,90,]
    ]

print("Student Record Summary:\n")
var highestAverage: Double = 0.0
var topStudent: String = ""

for student in studentNames {
    
   // print("The student: \(student)")
   // print("The grades: \(studentGrades[student]) \n")
    
    if let grades = studentGrades[student] {
    
        
        let total = grades.reduce(0, +)
        let average = Double(total)/Double(grades.count)
        
        print("Students: \(student)")
        print("Grades: \(grades)")
        print(String(format: "Average is : %.2f \n",average))
        
        // Highest Student
        if average > highestAverage{
            highestAverage = average
            topStudent = student
        }
        
    }
}

print("Top student: \(topStudent) and highest average: \(highestAverage)")
