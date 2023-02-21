//
//  fadeview.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/6/23.
//

import SwiftUI

struct fadeview: View {
   
    @State private var offset = CGSize.zero
    
    var body: some View {
        Rectangle()
            .frame(width: 170.0, height: 170.0)
            //.rotationEffect(.degrees(0))
            .offset(x: offset.width * 0.75, y: offset.height * 0.75)
            .opacity(2 - Double(abs(offset.width / 50)))
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

struct fadeview_Previews: PreviewProvider {
    static var previews: some View {
        fadeview()
    }
}
