class Hero {
    var name = "Batman"
    
    init(){
        print("I am \(name)")
    }
    
    func toolBelt(){
        print("Here is your cool gadget!")
    }
    
    deinit{
        print("Batman is gone, \(name)")
    }
}


for _ in 1...4{
    let newHero = Hero()
    newHero.toolBelt()
}

//ARC
