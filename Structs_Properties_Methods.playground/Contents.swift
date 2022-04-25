import UIKit

//Creating Structs

struct User {
    var firstName: String
    var lastName: String
}

var user_1 = User(firstName: "Duc", lastName: "Nguyen Minh")

print("My fullname is \(user_1.firstName) \(user_1.lastName)")

user_1.firstName = "MiMi"
print("My fullname is \(user_1.firstName) \(user_1.lastName)")

//Computed Properties

struct User_2 {
    var name: String
    var showUI: Bool
    
    var statusUser: String {
        if showUI {
            return "\(name)"
        } else {
            return "Hidden"
        }
    }
}

var user_2 = User_2(name: "Duc", showUI: false)
print(user_2.statusUser)

//Property Observers

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "VALORANT", amount: 0)
progress.amount = 25
progress.amount = 50
progress.amount = 75
progress.amount = 100

//Methods

struct Math {
    var number: Int
    func sum() -> Int {
        return number + 10
    }
}

var math = Math(number: 1)
math.sum()

//Mutating Methods

struct Person {
    var name: String
    mutating func makeAnonymous() {
        name = "Anomymous"
    }
}

var person = Person(name: "Duc")
person.makeAnonymous()

//Properties And Methods Of Strings

let string = "Welcome to ICTEAM GLOBAL"
print(string.count)
print(string.hasPrefix("Welcome"))
print(string.uppercased())
print(string.sorted())

//Properties And Methods Of Arrays

var numbers = ["Zero"]
numbers.count
numbers.append("One")
numbers.firstIndex(of: "Zero")
numbers.sorted()
numbers.remove(at: 0)
print(numbers)
