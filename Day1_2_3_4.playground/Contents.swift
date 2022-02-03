import UIKit

var greeting = "Hello, playground"

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

beatles[0]

// Sets are collections of values just like arrays, except they have two differences:

// Items aren’t stored in any order; they are stored in what is effectively a random order.
// No item can appear twice in a set; all items must be unique.


let colors = Set(["red", "green", "blue"])

let colors2 = Set(["red", "green", "blue", "red", "blue"]) // ikinci kez red okunmuyor.

/*
Tuples allow you to store several values together in a single value. That might sound like arrays, but tuples are different:

You can’t add or remove items from a tuple; they are fixed in size.
You can’t change the type of items in a tuple; they always have the same types they were created with.
You can access items in a tuple using numerical positions or by naming them, but Swift won’t let you read numbers or names that don’t exist.
Tuples are created by placing multiple items into parentheses, like this:

*/

var name = (first: "Taylor", last: "Swift")

name.0
name.first
name.last

//Remember, you can change the values inside a tuple after you create it, but not the types of values. So, if you tried to change name to be (first: "Justin", age: 25) you would get an error.

/*
 Arrays, sets, and tuples can seem similar at first, but they have distinct uses. To help you know which to use, here are some rules.

 If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple:
 */


let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

//If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:

let set = Set(["aardvark", "astronaut", "azalea"])

//If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

/*
 
 Dictionaries are collections of values just like arrays, but rather than storing things with an integer position you can access them using anything you want.

 The most common way of storing dictionary data is using strings. For example, we could create a dictionary that stores the height of singers using their name:
 
 */

let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

/*
 Just like arrays, dictionaries start and end with brackets and each item is separated with a comma. However, we also use a colon to separate the value you want to store (e.g. 1.78) from the identifier you want to store it under (e.g. “Taylor Swift”).

 These identifiers are called keys, and you can use them to read data back out of the dictionary:
 */

heights["Taylor Swift"]
heights["Ed Sheeran"]

//Note: When using type annotations, dictionaries are written in brackets with a colon between your identifier and value types. For example, [String: Double] and [String: String].


/*
 If you try to read a value from a dictionary using a key that doesn’t exist, Swift will send you back nil – nothing at all. While this might be what you want, there’s an alternative: we can provide the dictionary with a default value to use if we request a missing key.

 To demonstrate this, let’s create a dictionary of favorite ice creams for two people:
 */

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

//We can read Paul’s favorite ice cream like this:

favoriteIceCream["Paul"]
//But if we tried reading the favorite ice cream for Charlotte, we’d get back nil, meaning that Swift doesn’t have a value for that key:

favoriteIceCream["Charlotte"]

//We can fix this by giving the dictionary a default value of “Unknown”, so that when no ice cream is found for Charlotte we get back “Unknown” rather than nil:

favoriteIceCream["Charlotte", default: "Unknown"]

/*
 Arrays, sets, and dictionaries are called collections, because they collect values together in one place.

 If you want to create an empty collection just write its type followed by opening and closing parentheses. For example, we can create an empty dictionary with strings for keys and values like this:
 */

var teams = [String: String]()

//We can then add entries later on, like this:

teams["Paul"] = "Red"

//Similarly, you can create an empty array to store integers like this:

var results = [Int]()

//The exception is creating an empty set, which is done differently:

var words = Set<String>()
var numbers = Set<Int>()

/*
 This is because Swift has special syntax only for dictionaries and arrays; other types must use angle bracket syntax like sets.

 If you wanted, you could create arrays and dictionaries with similar syntax:
 */

var scores = Dictionary<String, Int>()
var results2 = Array<Int>()

// ENUM **********

enum Result {
    case success
    case failure
}

let result4 = Result.failure
let result5 = Result.success

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "swiftUI")

print(talking)

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)
print(Planet(rawValue: 3)!)

/*
 You’ve made it to the end of the second part of this series, so let’s summarize:

 Arrays, sets, tuples, and dictionaries let you store a group of items under a single value. They each do this in different ways, so which you use depends on the behavior you want.
 Arrays store items in the order you add them, and you access them using numerical positions.
 Sets store items without any order, so you can’t access them using numerical positions.
 Tuples are fixed in size, and you can attach names to each of their items. You can read items using numerical positions or using your names.
 Dictionaries store items according to a key, and you can read items using those keys.
 Enums are a way of grouping related values so you can use them without spelling mistakes.
 You can attach raw values to enums so they can be created from integers or strings, or you can add associated values to store additional information about each case.
 */


let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}else {
    print("Worng")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

let a = 10
let b = 10

if a >= 10 && b <= 10 {
    print("Hello, Swift!")
}

let average1 = 5.0
let average2 = 4.0

if average1 > 5.0 && average2 > 4.0 {
    print("Hello, Swift!")
}else {
    print("false")
}

let a1 = true
let b1 = true

if a1 && b1 {
    print("Hello, Swift!")
}

let age11 = 18
let age22 = 21

if age11 > 18 || age11 < 18 {
    print("Hello, Swift!")
}else {
    print("false")
}

let name1 = "Charlotte"
let name2 = "Sophie"

if name1 == "Paul" || name2 == "Sophie" {
    print("Hello, Swift!")
}else {
    print("false")
}

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

var numberss = [1, 2, 3, 4, 5, 6]
for number in numberss {
    if number % 2 == 0 {
        print(number)
    }
}

let albums = ["1989", "Red"]
for album in albums {
    print("\(album) was a great album!")
}

var names = ["John", "Sophie", "Lottie"]
for name in names {
    print("Hello, \(name)!")
}

var numbersss = [1, 2, 3, 4, 5, 6]
for number in numbersss {
    if number % 2 == 0 {
        print(number)
    }
}

for number in [2, 3, 5] {
    print("\(number) is a prime number.")
}

let score = 100
for count in 10..<13 {
    print("I'm counting to \(count)")
}

for i in 1...8 {
    if i < 3 {
        print("\(i) is a small number")
    }
}


var number = 1

while number <= 20 {
    print(number)
    number += 1
}


let colorss = ["Red", "Green", "Blue", "Orange", "Yellow"]
var colorCounter = 0
while colorCounter < 5 {
    print("\(colorss[colorCounter]) is a popular color.")
    colorCounter += 1
}

var pianoLesson = 1
while pianoLesson < 5 {
    print("This is lesson \(pianoLesson)")
    pianoLesson += 1
}

var cats: Int = 0
while cats < 10 {
    cats += 1
    print("I'm getting another cat.")
    if cats == 4 {
        print("Enough cats!")
        cats = 10
    }
}

var itemsSold: Int = 0
while itemsSold < 5000 {
    itemsSold += 100
    if itemsSold % 1000 == 1000 {
        print("\(itemsSold) items sold - a big milestone!")
    }
}

var averageScore = 2.5
while averageScore < 15.0 {
    averageScore += 2.5
    print("The average score is \(averageScore)")
}

var hoursStudied = 0
var goal = 10
repeat {
    hoursStudied += 1
    if hoursStudied > 4 {
        goal -= 1
        continue
    }
    print("I've studied for \(hoursStudied) hours")
} while hoursStudied < goal

let fibonacci = [1, 1, 2, 3, 5, 8, 13, 21]
var position = 0
while position <= 7 {
    let value = fibonacci[position]
    position += 1
    if value < 2 {
       continue
    }
    print("Fibonacci number \(position) is \(value)")
}

for i in 1...15 {
    let square = i * i
    if i == 8 {
        continue
    }
    print("\(i) squared is \(square)")
}

for square in [4, 9, 16, 25, 36] {
    if square >= 25 {
        continue
    } else {
        print("What's the square root of \(square)?")
    }
}

for i in 1...100 {
    if 100 % i == 0 {
        print("100 divides evenly into \(i)")
    } else {
        continue
    }
}

for i in 1...5 {
    if i == 5 {
        continue
    }
    let sum = i + i
    print("\(i) + \(i) is \(sum).")
}

var carsProduced = 0
repeat {
    carsProduced += 1
    if carsProduced % 2 == 0 {
        continue
    }
    print("Another car was built.")
} while carsProduced < 20

var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}

outer: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("Product is \(product)")
        break outer
    }
}


