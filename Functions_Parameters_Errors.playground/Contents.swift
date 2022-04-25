import UIKit

// Writing Functions

func messageApp() {
    let message = "Hello Duc Nguyen Minh"
    print(message)
}

messageApp()

//Accepting Parameters

func sum(a: Int, b: Int) {
    print(a + b)
}

sum(a: 1, b: 2)

//Returning Values

func square(number: Int) -> Int {
    return number * number
}

let result = square(number: 2)
print(result)

//Parameter Labels

func helloSay(to name: String) {
    print("Hello \(name)")
}

helloSay(to: "Duc Nguyen Minh")

//Omtting Parameter Labels

func alarm(_ time: String) {
    print("Alarm: \(time)")
}

alarm("5:00")

//Default Parameters
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello \(person)")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet("Duc")
greet("DUc", nicely: false)

//Variadic Function

func square_2(numbers: Int...) {
    for number in  numbers {
        let product = number * number
        print("\(number) * \(number) = \(product)")
    }
}

square_2(numbers: 1,2,3,4,5)

//Writing Throwing Functions

enum PasswordError: Error {
case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

//Running Throwing Functions

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

//Inout Parameters

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)
