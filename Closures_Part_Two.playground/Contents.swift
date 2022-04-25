import UIKit

//Closures With Parameters

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("Viet Nam")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car1.")
}

//Closures With Return Values

func travel_2(action: (String) -> String )  {
    print("I'm getting ready to go.")
    let description = action("Viet Nam")
    print(description)
    print("I arried!")
}

travel_2 { (place: String) -> String in
    return "i'm going to \(place)"
}

//Shorthand Parameters Names

func travel_3(action: (String) -> String )  {
    print("I'm getting ready to go.")
    let description = action("Viet Nam")
    print(description)
    print("I arried!")
}

travel_3 {
    "I'm going to \($0) in my car 3."
}

//Closures With Multiple Parameters

func travel_4(action: (String, Int) -> String )  {
    print("I'm getting ready to go.")
    let description = action("Viet Nam", 1)
    print(description)
    print("I arried!")
}

travel_4 {
    "I'm going to \($0) at \($1) miles per hour"
}

//Returning Closures

func travel_5() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel_5()
result("VietNam")

let result_2 = travel_5()("Viet Nam")

//Captuning Values

func travel_6() -> (String) -> Void {
    var counter = 1;
    return {
        print("\(counter).I'm going to \($0)")
        counter += 1
    }
}

let result_3 = travel_6()
result_3("Viet Nam")
result_3("USA")
result_3("Canada")
