import UIKit
var studentNames:[String] = ["Epifanio","Roy","Will","Robert"]
print("These are our Students: \(studentNames)")


var studentIDs: Set<Int> = [345,346,347]

print("These our our students IDs: \(studentIDs)")

var studentsGrade: [String:Int] = ["Epifanio":88,"Roy":92,"Will":85,"Robert":90]

print("These are our students grades: \(studentsGrade)")

var courseNames:[ String] = ["Math","Science","English"]

print("The sencond course is: \(courseNames[1])")
for course in courseNames{
    print(course)
}

