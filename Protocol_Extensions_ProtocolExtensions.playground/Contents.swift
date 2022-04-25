import UIKit

//Protocols

protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("\(thing.id)")
}

//Protocol Inheritance

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func studty()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, Hashable {}

//Extensions

extension Int {
    func square() -> Int {
        return self * self
    }
}

let number = 2
number.square()

extension Int {
    func isEvent() ->Bool {
        return self % 2 == 0
    }
}

let number_2 = 3
number_2.isEvent()

//Protocol Extensions

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func sumarize() {
        print("There are \(count) of us: ")
        
        for name in self {
            print(name)
        }
    }
}

pythons.sumarize()
beatles.sumarize()

//Protocol-Oriented Programming

protocol Identifiable_2 {
    var id : String { get set }
    func identify()
}

extension Identifiable_2 {
    func identify() {
        print("My id is: \(id)")
    }
}

struct User_2: Identifiable_2 {
    var id: String
}

let duc = User_2(id: "2")
let hung = User_2(id: "3")

duc.identify()
hung.identify()
