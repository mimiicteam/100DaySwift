import UIKit

//Arrays: Mảng

let duc = "Duc Nguyen Minh"
let hung = "Hung Nguyen Hoang"
let thien = "Thien Nguyen Duc"
let tri = "Tri Le Minh"

let fullName = [duc, hung, thien, tri]
fullName[0]

//Sets
let numbers = Set(["One", "Two", "Three"])
let numbers_2 = Set(["One", "Two", "Three", "One", "Two"])

//Tuples
let name = (firstName: "Duc", lastName: "Nguyen")
name.0
name.lastName

//Array vs Sets vs Tuples
let address = (house: "Hoa Vang", street: "Bau Cau 15", city: "Da Nang")
let set = Set(["A", "B", "C"])
let strNum = ["One", "Two", "Three", "One", "Five"]

//Dictionaries  [key, value]
let olds = [
    "Duc": 19,
    "Hung": 20,
    "Thien": 19,
    "Tri": 19
]

olds["Duc"]

//Dictionaries Default Values: Giá trị mặc định từ điển
let favouriteFood = [
    "Duc": "Ice",
    "Hung": "Chocolate"
]

favouriteFood["Duc"]
favouriteFood["Ice", default: "Unknow"]

//Creating Empty Colllections: Tạo bộ sưu tập trống
var teams = [String: String]()
teams["Duc"] = "Team Mobile"

var results = [Int]()

var words = Set<String>()
var numbers_1 = Set<Int>()

var scrore = Dictionary<String, Int>()
var results_1 = Array<Int>()

//Enumerations: Liệt kê

var result_one = "failure"
var result_two = "failed"
var result_three = "fail"

enum Result {
    case success
    case failure
}

Result.success
Result.failure

//Enum Associated Values: Enum các giá trị liên kết

enum Activity {
    case border
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let run = Activity.running(destination: "Let's Go")

//Enum Raw Values: Enum gía trị thô

enum Number: Int {
    case One = 1
    case Two
    case Three
    case Four
}

let Three = Number(rawValue: 2)
