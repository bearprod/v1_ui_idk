//
//  sunday4.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/19/23.
//

import SwiftUI

struct sunday4: View {
    
    var img_name: String = "me"
    
    var size: Double = 80.0
    
    var body: some View {
            ZStack{
                Image(img_name)
                    .resizable()
                    .frame(width: size, height: size)
                    .blur(radius: 8)
                    .clipShape(Circle())
            }
            .shadow(color: .pink, radius: 8)
            .shadow(color: .pink, radius: 8)
            .shadow(color: .pink, radius: 8)
                
    }
}

struct sunday4_Previews: PreviewProvider {
    static var previews: some View {
        sunday4()
    }
}
