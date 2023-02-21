//
//  secondflip.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/8/23.
// whatever, rpob better ones but u have this, have a cool one boommarkd

import SwiftUI

struct secondflip: View {
    @State var flipped = false
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
                   .foregroundColor(self.flipped ? .red : .blue) // change the card color when flipped
                   .padding()
                   .rotation3DEffect(self.flipped ? Angle(degrees: 180): Angle(degrees: 0), axis: (x: CGFloat(0), y: CGFloat(10), z: CGFloat(0)))
                   .onTapGesture {
                       withAnimation {
                           self.flipped.toggle()
                       }
               }
    }
}

struct secondflip_Previews: PreviewProvider {
    static var previews: some View {
        secondflip()
    }
}
