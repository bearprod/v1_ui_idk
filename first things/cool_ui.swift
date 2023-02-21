//
//  cool_ui.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/7/23.
//

import SwiftUI

struct cool_ui: View {
    var body: some View {
        ZStack{
            Image("az")
                .resizable()
                .frame(width: 170.0, height: 170.0)
            
        }
    }
}

struct cool_ui_Previews: PreviewProvider {
    static var previews: some View {
        cool_ui()
    }
}
