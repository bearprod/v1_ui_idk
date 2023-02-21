//
//  sunday13.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/19/23.
//

import SwiftUI

struct sunday13: View {
    
    @State var offset = CGSize.zero
    
    var body: some View {
        
        
        ZStack{
            GeometryReader { geometry in
                
                var x_pos: Double = geometry.size.width / 2
                var y_pos: Double = geometry.size.height / 2
                
                var mainCircPos = CGPoint(x: x_pos, y: y_pos)
                        
                ZStack {
            
        
                        Path { path in
                                path.move(to: CGPoint(x: 0, y: 0))
                                path.addLine(to: mainCircPos)
                            }
                            .offset(x: offset.width * 0.75, y: offset.height * 0.75)
                            .stroke(Color.red, lineWidth: 6)
                    
                    
                        Circle()
                                .fill(Color.blue)
                                .frame(width: 200, height: 200)
                                .offset(x: offset.width * 0.75, y: offset.height * 0.75)
                                .gesture(
                                    DragGesture()
                                        .onChanged { gesture in
                                            offset = (gesture.translation)
                                        } .onEnded { _ in
                                            withAnimation {
                                                switch offset.width{
                                                case -500...(-150):
                                                    offset = CGSize(width: -500, height: 0)
                                                case 150...500:
                                                    offset = CGSize(width: 500, height: 0)
                                                default:
                                                    offset = .zero
                                                }
                                            }
                                        }
                                    
                                
                                )
                        }
                    }
        }
    }
}

struct sunday13_Previews: PreviewProvider {
    static var previews: some View {
        sunday13()
    }
}
