import UIKit

// Constent

let fruits: [String] = ["Apple", "Banana", "Orange", "Mango"]
print("The first fruit is:", fruits[0])
print("The second fruit is:", fruits[1])
print("The third fruit is :",fruits[2])

//travel Arrays
for fruit in fruits {
    print(fruit)
}

//enumerated()
for((index, fruits) in fruits.enumerated(){
    print("\n The \(index) fruit is: \(fruits)")
    
}


// Last and first
    print("The first item is: ", fruits.first)
    print("The last item is: ", fruits.last)
    
    //?? -> mil coalescing -. define a default value
    print(fruits.first ?? "The is no information")
    
    
    // searching in the array
    // are there any apples
    
    print(fruits.contains("apple"))
    print(fruits.contains("apple"))
    
    //removing an item
    // print(fruits.remove(at:0)) -> it can't be change cause it's a constent
    
    var fruitsList: [String] = ["Apple", "Banana", "Orange", "Mango"]
    
// remove by index
    print("The removed item is: ", fruitsList.remove(at: 0))
    print("The list of fruits now conaunts: ", fruitsList)
    
    // Remove all the items
    print("The fruis list contains: ", fruitsList.removeAll())
    
    //AD ONE ITEM AT A TIME
    
    fruitsList.append("Mango")
    print("The new list is : ", fruitsList)
    
    // add mutliple items
    fruitsList.append(contentsOf: ["Mango", "Banana", "Orange", "Apple"])
    print(fruitsList)
    
    // Sorting
    let  ascendingOrderFruits = fruitsList.sorted()
    print(ascendingOrderFruits)
    
    // Reversed
    let descendingOrderFruits = fruitsList.sorted(by: >)
    print(descendingOrderFruits)
    
    
    
    
