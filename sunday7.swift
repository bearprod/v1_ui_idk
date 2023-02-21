//
//  sunday7.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/19/23.
//

import SwiftUI

struct sunday7: View {
    var body: some View {
        ZStack{
            GeometryReader { geometry in
                Circle()
                    .frame(width: 130.0, height: 130.0)
                    .foregroundColor(Color("mypurple"))
                    .position(x: geometry.size.width/2, y: geometry.size.height/2)
            Path() { path in
                    path.move(to: CGPoint(x: 50, y: 150))
                    path.addLine(to: CGPoint(x: 350, y: 150))
                }
                .stroke(Color.black, lineWidth: 4)
            }
        }
    }
}

struct sunday7_Previews: PreviewProvider {
    static var previews: some View {
        sunday7()
    }
}
