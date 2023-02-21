//
//  sunday6.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/19/23.
//

import SwiftUI

struct sunday6: View {
    var body: some View {
        ZStack{
            GeometryReader { geometry in
                Circle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)
                
                let globalCirclePosition = geometry.frame(in: .global).origin
                
                Path { path in
                    path.move(to: CGPoint(x: 100, y: 100))
                    path.addLine(to: globalCirclePosition)
                }
                .stroke(Color.pink, lineWidth: 2)
            }
        }
    }
}

struct sunday6_Previews: PreviewProvider {
    static var previews: some View {
        sunday6()
    }
}
