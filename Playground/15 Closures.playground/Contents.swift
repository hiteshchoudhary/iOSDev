// Closure

import Foundation

//{
//    (parameter) -> returnType in
//    // statement
//}

var dcWorld = {
    print("Welcome to DC")
}

var myClosure: () -> () = {}

var numClosure: (Int) -> (Int) = {
    (myNum: Int) -> Int in
    return myNum + 2
}

numClosure(2)

var anotherNumClosure = { myNum in
    return myNum + 4
}


// a closure with only return type

var founded = { () -> Int in
    return 2022
}


// a closure with only parameter type

var founders = {(name: String) in
    print(name)
}

founders("Hitesh")

// a closure with a parameter type and return type

var anotherFounder = {(name: String) -> String in
    return name
}


var anotherTwoFounder = {(nameOne: String, nameTwo: String) -> String in
    return nameOne + nameTwo
}


let movieNames = ["SuicideSquad", "WonderWoman", "JusticeLeague" ,"Joker", "TheFlash"]

var sortNames = movieNames.sorted { (s1:String, s2:String) -> Bool in
    return s1 > s2
}

print(sortNames)


func calculate(num: Int) -> Int {num * 20}

func sum(num1: Int, num2: Int, closureparam: (Int) -> (Int)) -> Int {
    var sum = 0
    for i in num1...num2 {
        sum += closureparam(i)
    }
    return sum
}

print(sum(num1: 0, num2: 3, closureparam: calculate))


func dataTask(with url: URL, completionHandler: @escaping(Data?, URLResponse?, Error?) -> Void) -> Void {
    //URLSessionDataTask
}


func printNumbers(_ result:@autoclosure () -> Void){
    print("One")
    result()
    print("Two")
}

//printNumbers {
//    print("Three")
//}

printNumbers( print("three"))
