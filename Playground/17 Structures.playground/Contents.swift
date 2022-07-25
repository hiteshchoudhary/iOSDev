// Structures


struct Marvel {
    var series: String = ""
    var aired: Int = 0
    var network: String = ""
}

var movieDetails = Marvel(series: "Wanda Vision", aired: 2021, network: "Disney")

print("Series \(movieDetails.series)")

var movie = Marvel()

movie.series = "Loki"
movie.aired = 2021
movie.network = "Disney"

print("Series \(movie.series)")



struct MarvelSeries {
    var series: String = ""
    var aired: Int = 0
    var network: String = ""
    
    func Details() -> String {
        return("\n Series: \(series)\n Aired In: \(aired)")
    }
}

var details = MarvelSeries()
details.series = "Ms. Marvel"
details.aired = 2022
details.network = "Disney"

print(details.Details())


struct MarvelProduction {
    var series: String
    var aired: Int
    var network: String
    
    init(Series: String, AiredIn: Int, Network: String){
        self.series = Series
        self.aired = AiredIn
        self.network = Network
    }
}


var series = MarvelProduction(Series: "Hawkeye", AiredIn: 2021, Network: "Disney")


// structs VS class
// Structs are Value type

struct Movie {
    var name: String = ""
}

var info = Movie(name: "Ironman")
var infoTwo = info
infoTwo.name = "Avengers"
print(info.name)
print(infoTwo.name)
