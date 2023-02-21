//
//  sunday1.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/19/23.
//

import SwiftUI

struct sunday1: View {
    var body: some View {
        ZStack{
            Color("mydark")
                .edgesIgnoringSafeArea(.all)
                .background(Color("mydark"))
            Image("az")
                .resizable()
                .frame(width: 170.0, height: 170.0)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(.pink, lineWidth: 3)
                        .blur(radius: 2)
                )
        }
    }
}

struct sunday1_Previews: PreviewProvider {
    static var previews: some View {
        sunday1()
    }
}
