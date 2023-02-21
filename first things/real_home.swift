//
//  real_home.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/18/23.
//

import SwiftUI

struct real_home: View {
    var body: some View {
        ZStack{
            Color("mydark")
                .edgesIgnoringSafeArea(.all)
                .background(Color("mydark"))
            VStack{
                Text("Reakt")
                    .fontWeight(.bold)
                    .font(.system(size: 44))
                    .foregroundColor(Color.white)
                Spacer()
                Image("az")
                    .resizable()
                    .frame(width: 170.0, height: 170.0)
                
            }
    
            
            
        }
    }

}


struct real_home_Previews: PreviewProvider {
    static var previews: some View {
        real_home()
    }
}
