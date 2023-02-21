//
//  flipkindof.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/8/23.
//

import SwiftUI

struct flipkindof: View {
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("trying"){
            withAnimation{
                animationAmount += 180
            }
        }
        .padding(50)
        .background(Color("mypurple"))
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
        
    }
}

struct flipkindof_Previews: PreviewProvider {
    static var previews: some View {
        flipkindof()
    }
}
