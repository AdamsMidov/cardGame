//
//  ContentView.swift
//  war-challenge
//
//  Created by Adams Midov on 23/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    
    var body: some View {
        
        ZStack{
            
            Image("background")
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    // generating random number
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    

//                     Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    //if else statement
                    
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    else if cpuRand > playerRand{
                        cpuScore += 1
                    }
                    
                    // Add the score
                   
                }, label: {
                    Image("dealbutton")
                })
               
                Spacer()
                
                
                HStack {
                 Spacer()
                    VStack {
                      
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
                
//                HStack {
//                    Text("Player")
//                        .foregroundColor(Color.white)
//                        .padding(.trailing, 90)
//
//                    Text("CPU")
//                        .foregroundColor(Color.white)
//
//                }
//                HStack {
//                    Text("O")
//                        .foregroundColor(Color.white)
//                        .padding(.top, 10.0)
//                        .padding(.trailing, 110.0)
//
//
//                    Text("O")
//                        .foregroundColor(Color.white)
//                        .padding(.top, 10.0)
//                        .padding(.trailing, -10.0)
//
//                }
//                Spacer()
                
           
                
            }
            
           
            
        }
        
        
        
    
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
