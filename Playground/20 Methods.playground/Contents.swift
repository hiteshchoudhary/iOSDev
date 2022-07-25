
// Methods

class SuperHero {
    var name = ""
    func heroName(str: String){
        name += str
        print(name)
    }
}

var details = SuperHero()
details.heroName(str: "Captain America ")
details.heroName(str: "Ironman")


// init

class AreaOfRect {
    let n1 : Int
    let n2 : Int
    let area: Int
    
    init(No1:Int, No2:Int){
        self.n1 = No1
        self.n2 = No2
        
        area = (No1 * No2)
    }
}

let area = AreaOfRect(No1: 34, No2: 45)
print("Area of rectangle is : \(area.area)")



struct Modify {
    var num = 45
    
    mutating func areaOfSquare() -> Int{
        num *= num
        return num
    }
}


enum Heros {
    case Marvel, Avengers, CaptainAmerica
    
    mutating func Types(){
        switch self {
        case.Marvel:
            self = .Avengers
        case.Avengers:
            self = .CaptainAmerica
        case.CaptainAmerica:
            self = .Marvel
        }
    }
}


var hero = Heros.Marvel
hero.Types()
print(hero)


class AreaSquare {
    class func areaSq(num: Int) -> Int{
        return num * num
    }
}


let sqArea = AreaSquare.areaSq(num: 30)
