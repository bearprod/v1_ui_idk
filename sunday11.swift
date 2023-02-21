//
//  sunday11.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/19/23.
//

import SwiftUI

struct sunday11: View {
    var body: some View {
        ZStack{
            GeometryReader { geometry in
                        let circlePosition = CGPoint(x: geometry.size.width / 2, y: geometry.size.height - 100)
                        
                        ZStack {
            
        
                        Path { path in
                                path.move(to: CGPoint(x: 0, y: 0))
                                path.addLine(to: circlePosition)
                            }
                            .stroke(Color.red, lineWidth: 2)
                        Circle()
                                .fill(Color.blue)
                                .frame(width: 50, height: 50)
                                .position(circlePosition)
                        }
                    }
        }
        .background(.green)
    }
}

struct sunday11_Previews: PreviewProvider {
    static var previews: some View {
        sunday11()
    }
}
