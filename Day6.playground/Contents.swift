import UIKit

//var greeting = "Hello, playground"
//
//let driving = {
//    print("I'm driving in my car")
//}
//
//let drive =  {
//    print("I'm going to home")
//}
//
//func travel(action: () -> Void) {
//    print("I'm getting ready to go.")
//    action()
//    print("I arrived!")
//}
//
//travel(action: driving)
//travel(action: drive)
func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
