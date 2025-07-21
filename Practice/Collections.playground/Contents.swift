import UIKit

// ARRAY
print("-----ARRAYS-----")
print("""
    These are the characteristics of an Array:
    1.It is orded
    2. Supports duplicated item.
    3. Each item has a positon (index). \n
    """)

// Defining an Array and with data
// var arrayName: [Type] = [Value1, Value2, ...]


var emptyArray: [Int] = []
var gradeArray: [Int] = [108, 89, 99,]
var names: [String] = ["Fernanda", "Will", "Roy","Epifanio","Brandon"]

// Lets print the Array using interpolation
print("This is an array: empytyArray -> \(emptyArray)")

// This is an JavaScript: console.log (' This is a long text and ${varible} ')

// Print the gradeArray and the names to verify the order
print("This is an Array of interger values: gradeArray -> \(gradeArray)")
print("This is an Array if strings: names -> \(names)\n")

//SET
print("-----SETS-----")
print("""
    These are the characteristics of the sets:
    1. It is an unordered collection.
    2. Items don't have a position.
    3. Duplicates are not allowed. \n
    """)

//Definig sets: empty and with date
// var setName: Set<Type> = [value...]

var emptySet: Set<Int> = []
var gradesSet: Set<Int> = [108, 89, 99]

print("This is an empty set: emptySet -> \(emptySet)")
print("This is a Set of integer values: gradesSet -> \(gradesSet)\n")
print("An Array is ordered -> [100, 89, 99] -> Output: \(gradeArray) | A Set is unordered -> {100, 89, 99} -> Output: \(gradesSet)\n")


// Dictionary
print("-----DICTIONARIES-----")
print("""
    These are the characteristics of the dictionaries:
    1. Unordered.
    2.Collection of key-value pairs.
    3. Each key must be unique, but the value can be duplicated. \n
    """)

// Defining dictionaries
// Var dictionaryName: [keyType: valueType] = [key1: value1, key2:value2,....]
var emptyDictionary: [String: Int] = [:]
var gradesDictionary: [String: Int] = ["Fernanda": 108, "Epifanio": 100, "Will": 85,]

// Lets print value
print("")


import Foundation

// Array to store student names
let studentNames = ["Dave", "Epifanio", "Roy", "Fernanda", "Will"]

// Dictionary to store student grades
var studentGrades: [String: [Int]] = [
    "Dave": [96, 99, 100],
    "Epifanio": [92, 88, 95],
    "Roy": [70, 65, 80],
    "Fernanda": [88, 84, 91],
    "Will": [95, 98, 98]
]

print("Student Record Summary:\n")







