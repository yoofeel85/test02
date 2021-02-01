//
//  ContentView.swift
//  Shared
//
//  Created by yoofeel on 2021/01/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack(alignment: .bottomTrailing){
            
            VStack(alignment: .leading, spacing: 0){
                
                HStack(){
                    Image(systemName: "line.horizontal.3")
                        .font(.largeTitle)
                    Spacer()
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
                }
                .padding(20)
                //.padding(.top, 15)
                //.padding(.horizontal, 15)
                
                Text("yoofeel todo1")
                    .font(.system(size:40))
                    .fontWeight(.black)
                    .padding(.horizontal, 20)
                
                ScrollView{
                    VStack{
                        MyCard()
                        MySmallCard()
                        MySmallCard()
                        MySmallCard()
                        MySmallCard()
                        MySmallCard()
                        MySmallCard()
                        
                    }.padding()
                }
            }
            
            
            Circle()
                .foregroundColor(Color.yellow)
                .frame(width: 60, height: 60)
                .overlay(
                    Image(systemName: "plus")
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                )
                .padding(10)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
