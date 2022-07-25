// Initialization


class concatenate {
    var fname: String = "Captain"
    var lname: String = " America"
    
    var fullname: String
    
    init(){
        fullname = fname + lname
    }
}

var name = concatenate()
print("Full name: \(name.fullname)")


class Marvel {
    var name: String
    init(movie: String, Date: String){
        print("\(movie) \n \(Date)")
        self.name = movie
    }
    init(hero: String){
        self.name = hero
    }
}

class Hero {
    var hname : String
    init(firstname fname: String, lastname lname: String){
        hname = fname + lname
    }
    
    init(_ fname: String, _ lname: String){
        hname = fname + lname
    }
}


var heroName = Hero(firstname: "Black", lastname: "Panther")
var uname = Hero("Captain", "America")


// no init

class DC {
    var hname: String?
    var movie = "Aquaman"
}

var dc = DC()

// failable init

struct User {
    var uuid: String
    
    init?(uuid: String){
        if uuid.count == 5 {
            self.uuid = uuid
        } else {
            return nil
        }
    }
}

var userme = User(uuid: "abc")



