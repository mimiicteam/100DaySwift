import UIKit

//Creating Basic Closures

let message = {
    print("Hello")
}

message()

//Accepting Parameters

let message_2 = {(name: String) in
    print("Hello \(name)")
}

message_2("Duc")

//Return Values

let message_3 = {(name: String) -> String in
    return "Hello \(name)"
}

let message_4 = message_3("Duc")
print(message_4)

//Closures As Parameters

let driving = {
    print("I'm driving in my car")
}

func travel(action: () -> Void) {
    print("I'm getting ready to go")
    action()
    print("I'm arived")
}

travel(action: driving)

//Trailing Closure Syntax
travel {
    print("I'm driving in my car 2")
}
