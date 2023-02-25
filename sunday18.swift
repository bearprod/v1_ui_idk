//
//  sunday18.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/23/23.
//

import SwiftUI

struct sunday18: View {
    var body: some View {
        ZStack{
            Color("mydark")
                .edgesIgnoringSafeArea(.all)
                .background(Color("mydark"))
            sunday4(img_name: "jordan")
                .offset(x: 120, y: -140)
            sunday4(img_name: "me")
                .offset(x: 30, y: -270)
            sunday4(img_name: "ye")
                .offset(x: -110, y: -160)
            
        }
    }
}

struct sunday18_Previews: PreviewProvider {
    static var previews: some View {
        sunday18()
    }
}
