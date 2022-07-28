import UIKit
import Foundation


enum PaperSize:String {
    case a4
    case a5
    case legal = "a7"
}

let myPaper = PaperSize.legal

print(myPaper.rawValue)
