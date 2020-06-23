//
//  ContentView.swift
//  dribbblelogin
//
//  Created by Kévin Esprit on 22/06/2020.
//  Copyright © 2020 Kesprit. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var login: String = ""
    @State var password: String = ""
    @State var ballDrop: Bool = false
    @State var centeredLogo: Bool = false
    @State var showTextField: Bool = false
    
    private var isLoginInvalid: Bool { login.isEmpty || password.isEmpty }
    
    var body: some View {
        VStack {
            VStack(spacing: 50) {
                LogoView(ballDrop: $ballDrop, centeredLogo: $centeredLogo)
                    .frame(width: 200, height: 200)
                    .offset(y: centeredLogo ? 0 : 100)
                LoginView(login: $login, password: $password)
                    .opacity(showTextField ? 1 : 0)
            }
            .padding(.top, 150)
            Spacer()
            LogInButton()
                .opacity(isLoginInvalid ? 0 : 1)
                .animation(.easeOut)
        }
        .padding(.horizontal, 60)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                withAnimation {
                    self.ballDrop.toggle()
                }
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                withAnimation {
                    self.centeredLogo.toggle()
                }
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.9) {
                withAnimation {
                    self.showTextField.toggle()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .colorScheme(.dark)
    }
}
