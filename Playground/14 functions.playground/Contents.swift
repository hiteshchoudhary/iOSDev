// FUNCTIONS

/*
 
 Syntax:
 
func functionName(parameters) -> ReturnType {
 // statements
 // more statements
 
 return parameters
 
 
 
 */

func avengers(){
    print("Hello avengers !")
}

avengers()

//functions with parameters

func avenger(year: Int){
    print("Avengers was released in \(year)")
}

func Avengers(x:String, y: String){
    print(x + " " + y)
}
Avengers(x: "Avenger", y: "Age of Ultron")


func avengerMovie() -> (String, String) {
    let movieName = "Avenger"
    let series = "Infinity war"
    
    return(movieName, series)
}

var val = avengerMovie()
print(val.1)


func add (a: Int, b: Int) -> Int {
    return a + b
}

var addition: (Int, Int) -> Int = add
print("10 + 90  = \(addition(10, 90))")
