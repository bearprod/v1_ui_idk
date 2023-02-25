//
//  sunday17.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/19/23.
//

import SwiftUI

struct sunday17: View {
    var body: some View {
        ZStack{
            Color("mydark")
                .edgesIgnoringSafeArea(.all)
                .background(Color("mydark"))
            sunday4(img_name: "az", size: 240.0)
                .offset(x: 0, y: 80)
            
        }
    }
}

struct sunday17_Previews: PreviewProvider {
    static var previews: some View {
        sunday17()
    }
}
