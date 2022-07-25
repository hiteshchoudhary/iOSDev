
// Enums

enum Marvel {
    case Ironman
    case Spiderman
    case CaptainAmerica
    case BlackPanther
    case Thor
}

var hero = Marvel.BlackPanther

if hero == .BlackPanther {
    print("Wakanda's KING")
}


switch hero {
case .BlackPanther:
    print("Wakanda's King")
case .CaptainAmerica:
    print("The first avenger")
case .Thor:
    print("King of Earth")
case .Ironman:
    print("Ironman")
case .Spiderman:
    print("Spiderman")
}


enum MarvelMovies {
    case Name(String)
    case Year(Int)
}

var mName = MarvelMovies.Name("Doctor Strange")
var mYear = MarvelMovies.Year(2016)


switch mName{
case .Name(let movieName):
    print("Movie name is \(movieName)")
case .Year( let movieYear):
    print("Movie year is \(movieYear)")
}


//recursion Enums

indirect enum ArithimeticExpression {
    case num(Int)
    case add(ArithimeticExpression, ArithimeticExpression)
}


func evalute (_ expression: ArithimeticExpression) -> Int{
    switch expression {
    case .num(let value):
        return value
    case .add(let first, let last):
        return evalute(first) + evalute(last)
    }
}


let a = ArithimeticExpression.num(34)
let b = ArithimeticExpression.num(234)

let addition = ArithimeticExpression.add(a, b)
print(evalute(addition))


//let addtionFail = ArithimeticExpression.add(4, 6)
//print(evalute(addtionFail))
