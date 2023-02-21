//
//  sunday2.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/19/23.
//

import SwiftUI

struct sunday2: View {
    var body: some View {
        ZStack{
            Color("mydark")
                .edgesIgnoringSafeArea(.all)
                .background(Color("mydark"))
            Image("me")
                .resizable()
                .frame(width: 170.0, height: 170.0)
                .overlay(
                    Circle()
                        .stroke(.pink, lineWidth: 5)
                        .blur(radius: 3)
                )
        }
    }
}

struct sunday2_Previews: PreviewProvider {
    static var previews: some View {
        sunday2()
    }
}
