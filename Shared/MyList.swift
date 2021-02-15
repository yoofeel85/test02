//
//  MyList.swift
//  test02
//
//  Created by yoofeel on 2021/02/13.
//

import SwiftUI
import UIKit

struct MyList: View {
    
    init() {
//        if #available(iOS 14.0, *){
//
//        } else {
//            UITableView.appearance().tableFooterView = UIView()
//        }
//
//        UITableView.appearance().separatorStyle = .none
        
//        UITableView.appearance().separatorColor = .clear
    }
    
    
    var body: some View{
        
//        List{
//            ForEach(1...10, id:\.self){
//                Text("hello world \($0)")
//            }
//        }
        
        List{
            
            Section(
                header:
                    Text("header").font(.headline).foregroundColor(Color.black)
                ,footer: Text("footer")
            ){
                ForEach(1...2, id:\.self){ itemIndex in
                    //Text("hello world \(itemIndex)")
                    MyNewCard(icon: "book.fill", title: "read book\(itemIndex)", start: "1 PM", end: "2 PM", bgColor: Color.green)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            
            
            Section(
                header:
                    Text("header2").font(.headline).foregroundColor(Color.black)
            ){
                ForEach(1...10, id:\.self){ itemIndex in
                    //Text("hello world \(itemIndex)")
                    MyNewCard(icon: "book.fill", title: "read book\(itemIndex)", start: "1 PM", end: "2 PM", bgColor: Color.blue)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 50, bottom: 10, trailing: 10))
            .listRowBackground(Color.yellow)
        }
        //.listStyle(GroupedListStyle())
        .listStyle(PlainListStyle())
//        .navigationBarTitle("My list")
    }
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
