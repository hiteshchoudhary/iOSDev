// control statements


let marvel = [
    "Ironman",
    "The_incredible_hulk",
    "Thor",
    "The_Avengers"
]

// for in loop
for heros in marvel{
    print(heros)
}

for index in 1...5{
    print("\(index) times 5 is \(index * 5)")
}

let base = 3
let power = 10
var answer = 1

for _ in 1...power{
    answer *= base
}

print("\(base) to the power of \(power) is \(answer)")


// while loop

var i = 1, n = 6

while(i <= n){
    print(i)
    i = i + 1
}

// conditional
// if statements

var age:Int = 80
var age2:Int = 40

if age > 70{
    print("Hero is getting OLD!")
}

// Ternary operators (?:)

let young = (age > age2) ? ("Hero is old") : ("Hero is still young")


// If Else statement

var DcMovie = ["Suicide Squad", "Justice League"]

for movie in DcMovie {
    if (movie == "Suicide Squad" ) {
        print("DC Production")
    } else {
        print("NOT a DC Production")
    }
}

var Avenger = [
    "Captain America",
    "Ironman"
]

for hero in Avenger {
    if hero == "Captain America"{
        print("Top avenger")
    }
    else if hero == "Ironman"{
        print("Stylish Avenger")
    }else {
        print("NOT AN AVENGER")
    }
}


//switch and case

let year = 2019
var movie: String

switch year {
case 2018:
    movie = "Aquaman"
case 2019:
    movie = "Shazam"
    fallthrough
case 2020:
    movie = "Birds of Prey"
default:
    movie = "NULL"
}

// tuples

//let movieInfoOne = ("Man of Steel", 2013)
//let movieInfoTwo: (String, Int) = ("Man of Steel", 2013)

// named tupled
let movieInfoOne = (Name:"Man of Steel", year: 2013)
let movieInfoTwo: (Name: String, Year: Int) = ("Man of Steel", 2013)


print(movieInfoOne.Name)


// Control transfer

var num = 3

while num < 40 {
    num += 4
    if num == 27 {
        continue
    }
    print("\(num)")
}
