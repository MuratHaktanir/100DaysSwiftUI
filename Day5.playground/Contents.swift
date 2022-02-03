import UIKit

var greeting = "Hello, playground"


func myFirstFunction() {
    let message = """
   Welcome to MyApp!

   Run this app inside a directory of images and
   MyApp will resize them all into thumbnails
   """
    print(message)
}

myFirstFunction()


print("Hello world.")

func square(number: Int) {
    print(number * number)
}

square(number: 8)


func circle(number: Int) -> Int {
    return number * number
}

let result = circle(number: 8)
print(result)


func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Aylin")


