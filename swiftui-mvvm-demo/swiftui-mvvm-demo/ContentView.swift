//
//  ContentView.swift
//  swiftui-mvvm-demo
//
//  Created by bogdan razvan on 12.04.2023.
//

import SwiftUI

struct ContentView: View {

    @StateObject private var viewModel = ViewModel()

    var body: some View {
        VStack(spacing: 20) {
            TextField("Username", text: $viewModel.loginModel.username)
            TextField("Password", text: $viewModel.loginModel.password)
            Button(action: {
                viewModel.submit()
            }) {
                Text("Submit")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
        }
        .padding(40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
