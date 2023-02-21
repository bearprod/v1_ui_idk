//
//  sunday10.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/19/23.
//

import SwiftUI

struct sunday10: View {
    var body: some View {
        GeometryReader { geometry in
                    let localCirclePosition = CGPoint(x: geometry.size.width / 2, y: geometry.size.height / 2)
                    
                    let globalCirclePosition = geometry.frame(in: .global).origin
                    
                    ZStack {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 50, height: 50)
                            .position(localCirclePosition)
                        
                        Path { path in
                            path.move(to: CGPoint(x: 100, y: 210))
                            path.addLine(to: globalCirclePosition)
                        }
                        .stroke(Color.pink, lineWidth: 2)
                    }
                }
    }
}

struct sunday10_Previews: PreviewProvider {
    static var previews: some View {
        sunday10()
    }
}
