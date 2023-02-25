//
//  testseg2.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/24/23.
//

import SwiftUI

struct testseg2: View {
    enum Route: Hashable {
        case firstSwitch // add other names as u see fit
    }
    
    // Triggers segues when its values are changes
    @State private var thisRoute: Route? = nil
    
    var body: some View {
            
        VStack{
            ZStack{
                Color("mydark")
                    .edgesIgnoringSafeArea(.all)
                    .background(Color("mydark"))
                
                VStack(spacing: 100.0){
                    
                    HStack(spacing: 45.0){
                        sunday4(img_name: "az")
                            .offset(x: 0, y: 0)
                            .segue(.switch(.asymmetric(insertion: .move(edge: .top).combined(with: .offset(y: -200)), removal: .move(edge: .bottom).combined(with: .offset(y: 200))),  .easeInOut(duration: 2)), tag: .firstSwitch, selection: $thisRoute) {
                                sunday4(img_name: "jordan")
                            }
                        
                        
                        sunday4(img_name: "drake")
                            .offset(x: 0, y: -80)
                            .segue(.switch(.asymmetric(insertion: .move(edge: .top).combined(with: .offset(y: -200)), removal: .opacity),  .easeInOut(duration: 2)), tag: .firstSwitch, selection: $thisRoute) {
                                
                                sunday4(img_name: "kim")
                                    .offset(x: 0, y: -80)
                            }
                        
                        sunday4(img_name: "addison")
                            .offset(x: 0, y: 0)
                            .segue(.switch(.asymmetric(insertion: .move(edge: .top).combined(with: .offset(y: -200)), removal: .move(edge: .bottom).combined(with: .offset(y: 200))),  .easeInOut(duration: 2)), tag: .firstSwitch, selection: $thisRoute) {
                                sunday4(img_name: "alix")
                            }
                    }
                    
                    Spacer().frame(width: 50, height: 100)
                    
                    Button("switch button") {
                        thisRoute = .firstSwitch
                    }
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .heavy, design: .default))
                }
                
            }
        }

    }
}

struct testseg2_Previews: PreviewProvider {
    static var previews: some View {
        testseg2()
    }
}
