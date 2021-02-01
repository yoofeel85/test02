//
//  MySmallCard.swift
//  test01
//
//  Created by yoofeel on 2021/01/26.
//

import SwiftUI

struct MySmallCard: View {
    
    var body: some View{
    
        HStack(spacing: 10){
            
            Image(systemName: "flame.fill")
                .font(.system(size: 35))
                .foregroundColor(.white)
            //.frame(width: 75, height: 75)
            
            VStack(alignment: .leading, spacing: 0){
                Divider().opacity(0)
                Text("hello")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                
                Spacer().frame(height: 5)
                
                Text("AM 10 - AM 11")
                    .foregroundColor(.white)
            }
            
        }
        .padding(20)
        .background(Color.purple)
        .cornerRadius(20)
    }
}


struct MySmallCard_Previews: PreviewProvider {
    static var previews: some View {
        MySmallCard()
    }
}
