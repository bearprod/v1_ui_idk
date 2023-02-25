//
//  testSegue.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/22/23.
//

import SwiftUI
import SwiftUISegues


struct testSegue: View {
    // All the routes that lead from this view to the next ones
    enum Route: Hashable {
        case switchTest, modalTest, popoverTest // add other names as u see fit
    }
    
    // Triggers segues when its values are changes
    @State private var route: Route? = nil
    
    var body: some View {
            
        VStack{
            ZStack{
                Color("mydark")
                    .edgesIgnoringSafeArea(.all)
                    .background(Color("mydark"))
                
                VStack(spacing: 150.0){
                    sunday4(img_name: "az", size: 240.0)
                        .offset(x: 0, y: 80)
                    Button("switch button") {
                        route = .switchTest
                    }
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .heavy, design: .default))
    
                }
                .segue(.switch(.asymmetric(insertion: .move(edge: .top).combined(with: .offset(y: -200)), removal: .move(edge: .bottom).combined(with: .offset(y: 200))),  .easeInOut(duration: 2)), tag: .switchTest, selection: $route) {
                    
                    sunday4(img_name: "jordan")
                        .offset(x: 120, y: -140)
                    sunday4(img_name: "me")
                        .offset(x: 30, y: -270)
                    sunday4(img_name: "ye")
                        .offset(x: -110, y: -160)
            }
           
            }
        }

    }
}

struct testSegue_Previews: PreviewProvider {
    static var previews: some View {
        testSegue()
    }
}
