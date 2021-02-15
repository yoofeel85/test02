//
//  ContentView.swift
//  Shared
//
//  Created by yoofeel on 2021/01/27.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNavigationBarHidden : Bool = false
    
    var body: some View {
        
        NavigationView{
            
            ZStack(alignment: .bottomTrailing){
                
                VStack(alignment: .leading, spacing: 0){
                    
                    HStack(){
                        
                        NavigationLink(destination: MyList()){
                            Image(systemName: "line.horizontal.3")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                        }
                        
                        
                        Spacer()
                        
                        NavigationLink(
                            destination: MyProfileView(),
                            label: {
                                Image(systemName: "person.crop.circle.fill")
                                    .font(.largeTitle)
                                    .foregroundColor(.black)
                            })
                            .navigationBarTitle("안녕하세요!", displayMode: .automatic)
                    
                    }
                    .padding(20)
                    //.padding(.top, 15)
                    //.padding(.horizontal, 15)
                    
                    Text("yoo todo!!")
                        .font(.system(size:40))
                        .fontWeight(.black)
                        .padding(.horizontal, 20)
                    
                    ScrollView{
                        VStack{
                            MyCard()
                            MyNewCard(icon: "book.fill", title: "read book", start: "1 PM", end: "2 PM", bgColor: Color.red)
                            MyNewCard(icon: "book.fill", title: "read book", start: "1 PM", end: "2 PM", bgColor: Color.green)
                            MyNewCard(icon: "book.fill", title: "read book", start: "1 PM", end: "2 PM", bgColor: Color.purple)
                            MyNewCard(icon: "book.fill", title: "read book", start: "1 PM", end: "2 PM", bgColor: Color.gray)
                            
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
            } // Zstack
            
            .navigationTitle("back")
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear(){
                self.isNavigationBarHidden  = true
            }
        } // NavigationView
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
