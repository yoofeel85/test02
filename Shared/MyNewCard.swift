//
//  MySmallCard.swift
//  test01
//
//  Created by yoofeel on 2021/01/26.
//

import SwiftUI

struct MyNewCard: View {
    
    var icon : String
    var title : String
    var start : String
    var end : String
    var bgColor : Color
    
    
    var body: some View{
    
        HStack(spacing: 10){
            
            Image(systemName: icon)
                .font(.system(size: 35))
                .foregroundColor(.white)
            //.frame(width: 75, height: 75)
            
            VStack(alignment: .leading, spacing: 0){
                Divider().opacity(0)
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                
                Spacer().frame(height: 5)
                
                Text("\(start) - \(end)")
                    .foregroundColor(.white)
            }
            
        }
        .padding(20)
        .background(bgColor)
        .cornerRadius(20)
    }
}


struct MyNewCard_Previews: PreviewProvider {
    static var previews: some View {
        MyNewCard(icon: "book.fill", title: "read book", start: "1 PM", end: "2 PM", bgColor: Color.green)
    }
}
