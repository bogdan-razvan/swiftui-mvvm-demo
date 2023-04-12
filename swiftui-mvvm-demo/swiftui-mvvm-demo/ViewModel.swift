//
//  ViewModel.swift
//  swiftui-mvvm-demo
//
//  Created by bogdan razvan on 12.04.2023.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var loginModel = LoginModel()

    func submit() {
        print("Username is: \(loginModel.username)")
        print("Password is: \(loginModel.password)")
    }
}
