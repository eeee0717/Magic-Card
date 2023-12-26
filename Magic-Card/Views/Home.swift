//
//  Home.swift
//  Magic-Card
//
//  Created by eeee on 2023/12/26.
//

import SwiftUI

struct Home: View {
    @State var token: String = ""
    @State var tokenIsEmpty: Bool = false
    var body: some View {
        VStack{
            Text("欢迎使用")
            Text("请点击按钮登录Github")
            TextField("请输入Github Token",text: $token)
                .frame(width: 150)
            Button(action: {
                tokenIsEmpty = githubLogin(token:token)
            }, label: {
                HStack{
                    Image("GithubIcon")
                        .resizable()
                        .frame(width: 24, height: 24)
                    Text("使用Github登录")
                }
            })
            .alert("Token不能为空", isPresented: $tokenIsEmpty){
                Button("OK", role: .cancel){}
            }
            .fixedSize()
        }
        .padding(5)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .frame(width: 250, height: 250)
    }
}
