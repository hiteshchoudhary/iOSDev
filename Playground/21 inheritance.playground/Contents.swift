// inheritance


class Heros {
    var name: String = ""
    var gender: String = ""
    var age: Int = 0
    init(Name: String, Gender: String, Age: Int){
        self.name = Name
        self.gender = Gender
        self.age = Age
    }
}

class Marvel: Heros{}
class DC: Heros{}

let MarvelHero = Marvel.init(Name: "Thor", Gender: "Male", Age: 1500)


// Overriding Methods

class Avenger1 {
    func partName(){
        print("The avengers (Super class)")
    }
}

class Avenger2: Avenger1 {
    override func partName() {
        print("The avengers: Age of Ultron")
    }
}


// Overriding Properties

class Avenger3 {
    var year = 2018
    var movieName: String {
        return "Avenger: Infinity War "
    }
}

class Avenger4: Avenger3 {
    var releasedYear = 2019
    override var movieName: String{
        return "Avenger: EndGame"
    }
   
}
