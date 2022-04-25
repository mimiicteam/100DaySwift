import UIKit

//Creating Classes

class Login {
    var username: String
    var password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
}

let login = Login(username: "mimiicteam", password: "123456")

//Class Inheritance

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

//Overriding Methods

class Dog_2 {
    func makeNoise() {
        print("Woof!")
    }
}

class Poodle_2: Dog_2 {
    override func makeNoise() {
        print("Yip!")
    }
}

let poppy = Poodle_2()
poppy.makeNoise()

//Copying Objects

class Singer {
    var name = "AAA"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "BBB"

print(singerCopy.name)

//Deinitializers

class Person_3 {
    var name = "Duc"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person_3()
    person.printGreeting()
}

//Mutability

class Singer_2 {
    var name = "AAA"
}

let bbb = Singer_2()
bbb.name = "BBB"
print(bbb.name)
