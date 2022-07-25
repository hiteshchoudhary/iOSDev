
// protocols

protocol AirCommand {
     func checkPlane()
     func checkFuel()
    var some: Int { get set }
}


class cadet: AirCommand{
    var some: Int = 2
    
    func checkPlane() {
        //
    }
    
     func checkFuel() {
        print("Plane checked 3 times")
    }
}


