import UIKit

//Handling Missing Data

var age: Int? = nil
age = 19
print(age!)

//Unwrapping Optionals
var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

//Unwraaping With Guard

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    
    print("Hello, \(unwrapped)")
}

greet("duc")

//Force Unwrapping

let str = "5"
let num = Int(str)!

print(num)

//Implicitly Unwrapped Optionals
let age_2: Int! = nil

//Nil Coalescing

func username(for id: Int) -> String? {
    if id == 1 {
        return "Duc"
    } else {
        return nil
    }
}
    
let user = username(for: 2) ?? "Anonymous"

print(user)

//Optionals Chaining
let names = ["Duc", "Hung", "Thien", "Vinh"]

names.first?.uppercased()

//Optionals Try

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password .")
}

if let result = try? checkPassword("password") {
    print("Resualt was \(result)")
} else {
    print("D'oh")
}

try! checkPassword("123456")
print("OK!")

//Failable Initializers

let str_2 = "2"
let num_2 = Int(str_2)

struct Person {
    var id: String
    
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

//Typecasting
class Animal {}
class Fish: Animal {}
class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}

