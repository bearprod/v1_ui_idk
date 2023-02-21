//
//  sunday3.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/19/23.
//

import SwiftUI

struct sunday3: View {
    var body: some View {
        
        ZStack{
            Color("mydark")
                .edgesIgnoringSafeArea(.all)
                .background(Color("mydark"))
            ZStack{
                Image("me")
                    .resizable()
                    .frame(width: 170.0, height: 170.0)
                    .blur(radius: 8)
                    .clipShape(Circle())
            }
            .shadow(color: .pink, radius: 6)
            .shadow(color: .pink, radius: 6)
            .shadow(color: .pink, radius: 6)
        }
    }
}

struct sunday3_Previews: PreviewProvider {
    static var previews: some View {
        sunday3()
    }
}
