//: Playground - noun: a place where people can play

import UIKit

// Functions

func minValue  (a: Int, b:Int) -> Int {
    if a <= b { return a }
    else { return  b }
}

func lastDigit  (_ a: Int) -> Int {
    return a % 10
}

func divides  (_ a: Int, _ b: Int) -> Bool {
    if a % b == 0 {return true}
    else { return false}
}
func countDivisors (_ a: Int) -> Int {
    var counter = 0
    for i in 1...a {
        if divides(a,i) == true{
            counter += 1
        }
    }
    return counter
}
func isPrime (_ a: Int) -> Bool {
    if a == 1 {return true}
    else if countDivisors(a) > 2 {return false}
    else { return true}
}

print (minValue(a: 1, b: 2))
print (lastDigit(123456789))
print (divides(8, 9))
print (countDivisors(8))
print (isPrime(3))
print ()


// Closures

func smartBart (_ n : Int, f: ()->()) -> () {
    for _ in 1...n {
        f()
    }
}

smartBart(2) { () -> () in
    print ("I will pass this course with best mark, because Swift is great!")
}

let numbers = [10, 16, 18, 30, 38, 40, 44, 50]
print(numbers.filter{$0 % 4 == 0})

print(numbers.reduce(numbers[0]) {
    if $0 > $1 {
        return $0
   } else {
       return $1
    }
})

var strings = ["Gdansk", "University", "of", "Technology"]
print (strings.reduce(""){$0 + " " + $1})

let numbers2 = [1, 2 ,3 ,4, 5, 6]
print (numbers2.filter{$0 % 2 != 0}.map{$0 * $0}.reduce(0){$0 + $1})
print ()


// Tuples

func minmax (_ a: Int, _ b: Int) -> (Int, Int) {
    var min = 0
    var max = 0
    if a >= b {
        max = a
        min = b
    }
    else {
        max = b
        min = a
    }
    return (min, max)
}
print ("min: " + "\(minmax(2,5).0)" + " max: " + "\(minmax(2,5).1)")

var stringsArray = ["gdansk", "university", "gdansk", "university", "university","of", "technology", "technology", "gdansk", "gdansk"]

func countStrings (arr: [String] = []) {
    let counts =  stringsArray.reduce(into: [:]) { counts, word in counts[word, default: 0] += 1 }
    print(counts)
}

print(countStrings())
print ()

// Enums

enum Day: String {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
    
    func rawVal() -> Int {
        switch self {
        case .Monday:
            return 1
        case .Tuesday:
            return 2
        case .Wednesday:
            return 3
        case .Thursday:
            return 4
        case .Friday:
            return 5
        case .Saturday:
            return 6
        case .Sunday:
            return 7
            
        }
    }
    
    func getEmoji() {
        switch self {
        case .Monday, .Tuesday, .Wednesday, .Thursday:
            print ("👨‍💻")
        case .Friday, .Saturday:
            print ("🍾")
        case .Sunday:
            print ("🙌")
        }
    }
    
}

let day = Day.Monday
print(day.rawVal())
print(day.getEmoji())
print ()
