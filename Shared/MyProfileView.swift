//
//  MyProfileView.swift
//  test02
//
//  Created by yoofeel on 2021/02/15.
//

import SwiftUI

struct MyProfileView: View {
    var body: some View{
        VStack{
            Text("Profile")
                
                .navigationBarTitle("내 프로필")
                .navigationBarItems(trailing:
                    NavigationLink(
                        destination: Text("설정화면")
                            .font(.largeTitle),
                        label: {
                            Image(systemName: "gear")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                        })
                    )
                
        }
        
    }
}

struct MyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileView()
    }
}
