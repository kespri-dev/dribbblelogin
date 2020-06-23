//
//  LogoView.swift
//  dribbblelogin
//
//  Created by Kévin Esprit on 23/06/2020.
//  Copyright © 2020 Kesprit. All rights reserved.
//

import SwiftUI

struct LogoView: View {
    
    @Binding var ballDrop: Bool
    @Binding var centeredLogo: Bool
    
    var body: some View {
        VStack {
            Image("dribbble-ball-icon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .offset(y: ballDrop ? 0 : -500)
                .animation(.spring(response: 0.6, dampingFraction: 0.6))
            Image("dribbble-logo")
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView(ballDrop: .constant(false), centeredLogo: .constant(false))
    }
}
