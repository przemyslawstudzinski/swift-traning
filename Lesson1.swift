//: Playground - noun: a place where people can play

import UIKit

//1

let firstNum = 5;
let secondNum = 10;
print("\(firstNum) + \(secondNum) = \(firstNum + secondNum)")
print("")

let pg = "Gdansk University of Technology"
print(pg)
let pgReplaced = pg.replacingOccurrences(of: "n", with: "⭐️")
print(pgReplaced)
print("")

let myName = "Przemysław"
let reversed = String(myName.reversed())
print("\(myName) -> \(reversed)")
print("")

//2

for _ in 1 ... 11 {
    print("I will pass this course with best mark, because Swift is great!")
}
print("")

let N = 5
for i in 1...N {
    print("\(i*i)")
}
print("")

let K = 4
for _ in 1...K {
    for _ in 1...K {
        print("@", terminator: "")
    }
    print("")
}
print("")

//3

var  numbers = [5, 10, 20, 15, 80, 13]
if (!numbers.isEmpty) {
    print(numbers.max()!)
}
print("")

var numbersRevesed = Array<Int>(numbers.reversed())
print(numbersRevesed)
print("")

var allNumbers = [10, 20, 10, 11, 13, 20, 10, 30]
print(allNumbers)
var unique = Array(Set(allNumbers))
print(unique)
print("")

//4
let numberToDivide = 10
var divisors = Set<Int>();

for i in 1...numberToDivide {
    if (numberToDivide % i == 0) {
        divisors.insert(i);
    }
}
print(divisors.sorted())
print("")

//5
var flights: [[String: String]] = [
    [
        "flightNumber" : "AA8025",
        "destination" : "Copenhagen"
    ],
    [
        "flightNumber" : "BA1442",
        "destination" : "New York"
    ],
    [
        "flightNumber" : "BD6741",
        "destination" : "Barcelona"
    ]
]
var flightNumbers = Array<String>();
for airportName in flights {
    flightNumbers.append(airportName["flightNumber"]!)
}
print(flightNumbers)
print("")

var names = ["Hommer","Lisa","Bart"]
var fullNames = [[String: String]]()

for name in names {
    fullNames.append(["lastName": "Simpson", "firstName": name])
    
}
print(fullNames)
