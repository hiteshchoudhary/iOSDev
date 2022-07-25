class Comic {
    var production: String = ""
    var name: String = ""
    
}

var comic = Comic()
comic.name = "Black Widow"
comic.production = "Marvel"
//print("Name is : \(comic.name)\n Production is: \(comic.production)")


//lazy stored property

class ComicStore {
    var name: String
    lazy var comicInfo: String = {
        return "Welcome to \(self.name)"
    }()
    init(Name: String){
        self.name = Name
    }
    
}

let store = ComicStore(Name: "Marvel Production")
//print(store.comicInfo)


//Computed properties
class Circle {
    var radius: Double?
    var cval: Double?
    var Area: Double {
        get {
            return radius! * radius!
        }
        set(newArea){
            cval = Double(newArea) * 3.14
        }
    }
}

let result = Circle()
result.Area = 20
//print(result.cval!)

//read only

class Multiplication {
    var num1 : Int = 5
    var num2 : Int = 5
    
    var mutiply: Int {
        get {
            return num1 * num2
        }
    }
}

let res = Multiplication()
//res.mutiply = 40
//print(res.mutiply)


// Swift property observer

class Changes {
    var num1: Int = 10 {
        willSet(newvalue){
            print("value of \(newvalue)")
        }
        didSet{
            if num1 > oldValue{
                print("Added \(num1 - oldValue)")
            }
        }
    }
}

let answer = Changes()
answer.num1 = 56
answer.num1 = 345
