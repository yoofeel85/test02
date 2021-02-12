//
//  MyCard.swift
//  test01
//
//  Created by yoofeel on 2021/01/26.
//

import SwiftUI

struct MyCard : View {
    
    @State var shouldShowAlert: Bool = false
    
    var body: some View{
        
        VStack(alignment: .leading, spacing: 0){
            
            //Rectangle().frame(height: 0)
            
            Text("hello My card!!")
                .font(.system(size: 23))
                .fontWeight(.black)
                .padding(.bottom, 3)
            Text("10 AM - 11AM")
                .padding(.bottom, 10)
                .foregroundColor(.secondary)
            
            HStack{
                Image(systemName: "flag.fill").frame(width: 45, height: 45, alignment: .center)
                    .font(.system(size: 40))
                    .overlay(Circle().stroke(lineWidth: 2).foregroundColor(Color.gray))
                Image(systemName: "person.fill").frame(width: 45, height: 45, alignment: .center)
                    .font(.system(size: 40))
                    .overlay(Circle().stroke(lineWidth: 2).foregroundColor(Color.gray))
                Image(systemName: "bolt.fill").frame(width: 45, height: 45, alignment: .center)
                    .font(.system(size: 40))
                    .overlay(Circle().stroke(lineWidth: 2).foregroundColor(Color.gray))
            
                Spacer()
                
                Button(action: {
                    print("확인 버튼이 클릭되었다.")
                    
                    self.shouldShowAlert = true
                }){
                    Text("확인")
                        //.font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 65)
                        .background(Color.gray)
                        .cornerRadius(20)
                }.alert(isPresented: $shouldShowAlert){
                    Alert(title: Text("알림창입니다."))
                }
          
            }
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
        
        
    }
}



struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard()
    }
}
