//
//  ContentView.swift
//  Shared
//
//  Created by Hitesh Choudhary on 26/07/22.
//

import SwiftUI

struct Hexagon: Shape {
    func path(in rect: CGRect) -> Path {
        return Path { path in
            let p1 = CGPoint(x: 0, y: 20)
            let p2 = CGPoint(x: 0, y: rect.height - 20)
            let p3 = CGPoint(x: rect.width/2, y: rect.height)
            let p4 = CGPoint(x: rect.width, y: rect.height - 20)
            let p5 = CGPoint(x: rect.width, y: 20)
            let p6 = CGPoint(x: rect.width/2, y: 0)
            
            path .move(to: p6)
            
            
            path.addArc(tangent1End: p1, tangent2End: p2, radius: 15)
            path.addArc(tangent1End: p2, tangent2End: p3, radius: 15)
            path.addArc(tangent1End: p3, tangent2End: p4, radius: 15)
            path.addArc(tangent1End: p4, tangent2End: p5, radius: 15)
            path.addArc(tangent1End: p5, tangent2End: p6, radius: 15)
            path.addArc(tangent1End: p6, tangent2End: p1, radius: 15)
            
            
        }
    }
    
    
}

enum Choice: Int, Identifiable {
    
    var id: Int {
        rawValue
    }
    case success, failure
}



struct ContentView: View {
    
    @State public var symbols = ["eating", "happy", "love"]
    @State public var numbers = [0, 1, 2]
    @State public var counter = 0
    @State private var showingAlert: Choice?
    
    var body: some View {
        ZStack{
            Image("sunshine")
                .resizable()
                .ignoresSafeArea(.all)
            VStack(alignment: .center, spacing: 80){
                HStack{
                    Image("fire")
                        .resizable()
                        .scaledToFit()
                        .shadow(color: .orange, radius: 1, y: 3)
                    Text("Slot Machine")
                        .font(.system(size: 30))
                        .fontWeight(.black)
                        .shadow(color: .orange, radius: 1, y: 3)
                    Image("fire")
                        .resizable()
                        .scaledToFit()
                        .shadow(color: .orange, radius: 1, y: 3)
                }.frame(width: .infinity, height: 50, alignment: .center)
                VStack(spacing: 15){
                    HStack(spacing: 35){
                        Hexagon()
                            .fill(Color.white.opacity(0.8))
                            .frame(width: 100, height: 120, alignment: .center)
                            .overlay(
                            Image(symbols[0])
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 70, alignment: .center)
                                .shadow(color: .gray, radius: 4, x: 4, y: 5)
                            )
                        Hexagon()
                            .fill(Color.white.opacity(0.8))
                            .frame(width: 100, height: 120, alignment: .center)
                            .overlay(
                            Image(symbols[0])
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 70, alignment: .center)
                                .shadow(color: .gray, radius: 4, x: 4, y: 5)
                            )
                    }
                    Hexagon()
                        .fill(Color.white.opacity(0.8))
                        .frame(width: 100, height: 120, alignment: .center)
                        .overlay(
                        Image(symbols[0])
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 70, alignment: .center)
                            .shadow(color: .gray, radius: 4, x: 4, y: 5)
                        )
                    HStack(spacing: 35){
                        Hexagon()
                            .fill(Color.white.opacity(0.8))
                            .frame(width: 100, height: 120, alignment: .center)
                            .overlay(
                            Image(symbols[0])
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 70, alignment: .center)
                                .shadow(color: .gray, radius: 4, x: 4, y: 5)
                            )
                        Hexagon()
                            .fill(Color.white.opacity(0.8))
                            .frame(width: 100, height: 120, alignment: .center)
                            .overlay(
                            Image(symbols[0])
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 70, alignment: .center)
                                .shadow(color: .gray, radius: 4, x: 4, y: 5)
                            )
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
