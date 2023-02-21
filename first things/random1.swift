//
//  random1.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/7/23.
// prob spring, yup
// and a flash thing,

import SwiftUI

struct random1: View {
    @State private var animatingCircle = false
    @State private var pink_var = false
    var body: some View {
        VStack{
            Circle()
                .frame(width: 130.0, height: 130.0)
                .foregroundColor(Color("mypink"))

            
            Circle()
                .frame(width: 130.0, height: 130.0)
                .foregroundColor(Color("mypurple"))
                .offset(x: 0, y: animatingCircle ? 200 : 0)
                .scaleEffect(animatingCircle ? 2.0 : 1.0)
                .onTapGesture {
                    withAnimation(.spring(response: 0.9, dampingFraction: 0.9, blendDuration: 0)){
                        animatingCircle.toggle()
                    }
                }
        }
    }
}

struct random1_Previews: PreviewProvider {
    static var previews: some View {
        random1()
    }
}
