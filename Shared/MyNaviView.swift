//
//  MyNaviView.swift
//  test02
//
//  Created by yoofeel on 2021/02/15.
//

import SwiftUI

struct MyNaviView: View {
 
    var body: some View{
        
        NavigationView{
            
            MyList()
                .navigationBarTitle("안녕하세요!", displayMode: .automatic)
                .navigationBarItems(leading: Button(action: {print("But")}){
                        Text("But")
                    }
                ,trailing:
                NavigationLink(
                    destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                    label: {
                        Image(systemName: "bookmark.fill")
                            .font(.largeTitle)
                            .foregroundColor(.black
                            )
                    })
                )
        }
        
        
    }
}

struct MyNaviView_Previews: PreviewProvider {
    static var previews: some View {
        MyNaviView()
    }
}
