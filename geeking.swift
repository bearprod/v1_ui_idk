//
//  geeking.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/25/23.
//

import SwiftUI

struct geeking: View {
    var body: some View {
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    @ViewBuilder func testfunc(input: geeking) -> some View{
        input
            .foregroundColor(Color("mypink"))
               
    }
}

struct geeking_Previews: PreviewProvider {
    static var previews: some View {
        geeking()
    }
}
