//
//  GithubLoginViewModel.swift
//  Magic-Card
//
//  Created by eeee on 2023/12/26.
//

import Foundation

func githubLogin(token: String)->Bool{
    if(token == ""){
        return true
    }
    print("登录成功！")
    print("token: \(token)")
    return false
}
