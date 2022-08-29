//
//  ContentView.swift
//  Card game
//
//  Created by Park Hyean Sue on 2022/07/09.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            
            Image("background").ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    //Random
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //update cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    //update score
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    else if cpuRand > playerRand {
                        cpuScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        
                        Text("Player").font(.headline).foregroundColor(Color.white).padding(.bottom,10.0)
                        Text(String(playerScore)).font(.headline).foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU").font(.headline).foregroundColor(Color.white).padding(.bottom,10.0)
                        Text(String(cpuScore)).font(.headline).foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
