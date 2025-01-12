//
//  ContentView.swift
//  War Card Game
//
//  Created by Rafael dos Santos Varela on 04.01.25.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card3"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    
    
    var body: some View {
        
        ZStack {
            Image("background-plain").resizable()
                .ignoresSafeArea(.all)
                
              
            
            VStack {
                Spacer()
                Image("logo")
                
                HStack {
                    Spacer()
                    Image(playerCard)
                        .padding(.trailing, 22.0)
                    Spacer()
                    Image(cpuCard)
                        .padding(.leading, 22.0)
                    Spacer()
                }
                .padding(40.0)
                Spacer()
               
            
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player").font(.headline)
                            .fontWeight(.bold)
                            
                     
                        Text(String(playerScore))
                            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                            .padding(12.0)
                    }.foregroundColor(Color.white)
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .fontWeight(.bold)
                            
                            
                        Text(String(cpuScore))
                            
                            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                            .padding(12.0)

                    }.foregroundColor(Color.white)
                    Spacer()
                }
                Spacer()
                    
            }
            
                
        }
        
    }
    func deal() {
        //Randomize the players card
        var playerCardValue = Int.random(in: 2...14)
        
        playerCard = "card" + String(playerCardValue)
        //Randomize the cpus card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        //Update the score
        if playerCardValue > cpuCardValue {
            playerScore += 1
        }
        else if
            cpuCardValue > playerCardValue {
                cpuScore += 1
            }
        else {
            playerScore += 1
            cpuScore += 1
            
        }
        }
        
    }


#Preview {
    ContentView()
}
