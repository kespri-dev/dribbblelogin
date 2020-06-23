//
//  LoginView.swift
//  dribbblelogin
//
//  Created by Kévin Esprit on 23/06/2020.
//  Copyright © 2020 Kesprit. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @Binding var login: String
    @Binding var password: String
    
    var body: some View {
        VStack(spacing: 20) {
            
            TextField("Login", text: $login)
                .textContentType(.emailAddress)
                .keyboardType(.emailAddress)
                .padding()
                .background(Color.gray.opacity(0.3))
            SecureField("Password", text: $password)
                .textContentType(.password)
                .padding()
                .background(Color.gray.opacity(0.3))
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(login: .constant(""), password: .constant(""))
    }
}
