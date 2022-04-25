import UIKit

//Arithmetic Operators: Toán tử số học

let firstScore = 4
let secondScore = 2

let total = firstScore + secondScore
let differencr = firstScore - secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 5 % secondScore

//Operator Overloading

let num_1 = 1
let num_2 = num_1 + 1

let str_1 = "Duc"
let str_2 = str_1 + "Nguyen Minh"

let arr_1 = ["Duc", "Nguyen"]
let arr_2 = ["Minh", "Text"]
let arr_3 = arr_1 + arr_2

//Compound Operators: Toán tử chuyển nhượng hợp chất

var score = 10
score -= 5

var quote = "Duc Nguyen "
quote += "Minh"

//Comparision Operators: Toán tử so sánh

firstScore == secondScore
firstScore != secondScore

firstScore > secondScore
firstScore <= secondScore

"A" >= "B"

//Conditions: Điều kiện

let firstCard = 10
let secondCard = 20

if firstCard + secondScore == 10 {
    print("Asce A Lucky!")
} else if firstCard + secondCard  == 21 {
    print("Blackjack!")
} else {
    print("Regular Card!")
}

//Combining Operators: Kết hợp các điều kiện

let age_1 = 15
let age_2 = 20

if age_1 > 18 && age_2 > 18 {
    print("Both are over 18")
}

if age_1 > 18 || age_2 > 18 {
    print("At least one is over 18")
}

//The Ternary Operator: Toán tử ba ngôi
let a = 1
let b = 2

let c = a > b ? a : b

//Switch Statements

let result = 1

switch result {
case 1:
    print("One")
case 2:
    print("Two")
case 3:
    print("Three")
default:
    print("Four")
}

//Range Operators: Toán tử phạm vi

let score_1 = 20

switch score_1 {
case 0..<20:
    print("You failled badly.")
case 20..<40:
    print("You did Ok!")
default:
    print("You did great!")
}
