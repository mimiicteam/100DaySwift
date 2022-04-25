import UIKit

//For Loops: Vòng lặp

let count = 0...9

for number in count {
    print("Number \(number)")
}

let names = ["Duc" , "Hung", "Thien"]

for name in names {
    print("My name is \(name)")
}

for _ in 1...5 {
    print("Hello")
}

//White loops

var number = 0

while number <= 10 {
    print(number)
    number += 1
}

//Repeat Loops
var number_2 = 0
repeat {
    print(number_2)
    number_2 += 1
} while number_2 <= 10

//Exit loops

var countDown = 10

while countDown >= 0 {
    print(countDown)
    if countDown == 4 {
        print("Good!")
    }
    countDown -= 1
}

//Exit Multiple Loops

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) = \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

//Skip items

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    
    print(i)
}

//Infinite Loops

var counter = 0

while true {
    print(" ")
    counter += 1
    
    if counter == 50 {
        break
    }
}
