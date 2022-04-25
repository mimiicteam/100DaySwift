import UIKit

//Initializers

struct User {
    var name: String
    init() {
        name = "Anonymous"
        print("Creating a new user")
    }
}

var user = User()
user.name = "Duc"

print(user.name)

//Self

struct Person {
    var name:String
    
    init(name: String) {
        print("My name is \(name)")
        self.name = name
    }
}

var person = Person(name: "Duc")

//Lazy Properties

struct FamilyTree {
    init() {
        print("Creating a new user")
    }
}

struct Person_2 {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var duc = Person_2(name: "Duc")
duc.familyTree

//Static Properties And Methods

struct Student {
    static var classSize = 0
    var name: String
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let tri = Student(name: "Tri")
let hung = Student(name: "Hung")
print(Student.classSize)

//Access Control

struct Person_3 {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    
    func identify() {
        print("My social sercurity number is \(id)")
    }
}

let user_3 = Person_3(id: "1")
user_3.identify()
