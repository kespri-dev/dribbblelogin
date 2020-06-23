//
//  LogInButton.swift
//  dribbblelogin
//
//  Created by Kévin Esprit on 23/06/2020.
//  Copyright © 2020 Kesprit. All rights reserved.
//

import SwiftUI

struct LogInButton: View {
    var body: some View {
        Button(action: {
            print("login")
        }) {
            ZStack {
                Color("primaryDribbble")
                Text("Go")
                    .font(.title)
                    .foregroundColor(.white)
            }
            .frame(width: 120, height: 50)
            .cornerRadius(20)
            .shadow(radius: 3)
        }
    }
}

struct LogInButton_Previews: PreviewProvider {
    static var previews: some View {
        LogInButton()
    }
}
