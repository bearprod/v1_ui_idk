//
//  sunday14.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/19/23.
//

import SwiftUI

struct sunday14: View {
    
    @State var offset = CGSize.zero

    
    @State var x_pos: Double = 200
    
    @State var y_pos: Double = 450
    
    
    var body: some View {
        ZStack{
            
                var mainCircPos = CGPoint(x: x_pos, y: y_pos)
            
                ZStack {
            
                        Path { path in
                            withAnimation{
                                path.move(to: CGPoint(x: 0, y: 0))
                                path.addLine(to: mainCircPos)
                            }
                            }
                            .offset(x: offset.width * 0.75, y: offset.height * 0.75)
                            .stroke(Color.red, lineWidth: 6)
                    
                    
                        Circle()
                                .fill(Color.blue)
                                .frame(width: 200, height: 200)
                                .position(mainCircPos)
                                .gesture(DragGesture()
                                    .onChanged { value in
                                        withAnimation {
                                            x_pos += value.translation.width * 0.01
                                            y_pos += value.translation.height * 0.01
                                        }
                                    }
                                    .onEnded { value in
                                        withAnimation{
                                            x_pos = 200.0
                                            y_pos = 450.0
                                        }
                                    }
                                            )
                               
        
                    }
        }
    }
    }


struct sunday14_Previews: PreviewProvider {
    static var previews: some View {
        sunday14()
    }
}
