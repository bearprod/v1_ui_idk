//
//  sunday12.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/19/23.
//

import SwiftUI

struct sunday12: View {
    
   @State var x_num: CGFloat = 100.0
    
    @State var y_num: CGFloat = 100.0
    
    var body: some View {
       
        Circle()
            .frame(width: 130.0, height: 130.0)
            .foregroundColor(Color("mypurple"))
            .position(x: x_num, y: y_num)
            .gesture(DragGesture()
                        .onChanged { value in
                            x_num += value.translation.width * 0.01
                            y_num += value.translation.height * 0.01
                            }
                        .onEnded { value in
                                x_num = 100.0
                                y_num = 100.0
                                    }
                        )
    }
}

struct sunday12_Previews: PreviewProvider {
    static var previews: some View {
        sunday12()
    }
}
