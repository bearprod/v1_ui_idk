//
//  testseg3.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/25/23.
//

import SwiftUI

struct testseg3: View {
    enum Route: Hashable {
        case firstSwitch // add other names as u see fit
    }
    
    // Triggers segues when its values are changes
    @State private var thisRoute: Route? = nil
    
    @State private var scale: CGFloat = 1.0
    
    @State var offset = CGSize.zero
    
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
                            .segue(.switch(.asymmetric(insertion: .move(edge: .top).combined(with: .offset(y: -200)), removal: .opacity),  .easeInOut(duration: 2)), tag: .firstSwitch, selection: $thisRoute) {
                                sunday4(img_name: "jordan")
                            }
                        
                        
                        sunday4(img_name: "drake")
                            .offset(x: 0, y: -80)
                            .segue(.switch(.asymmetric(insertion: .move(edge: .top).combined(with: .offset(y: -200)), removal: .opacity),  .easeInOut(duration: 2)), tag: .firstSwitch, selection: $thisRoute) {
                                
                                sunday4(img_name: "kim")
                                    .offset(x: 0, y: -80)
                            }
                        
                        sunday4(img_name: "addison")
                            .scaleEffect(scale)
                            .offset(x: offset.width, y: offset.height)
                            .onTapGesture {
                                withAnimation(.easeIn(duration: 2.0)){
                                    
                                    scale *= 2
                                    offset.width = -120.0
                                    offset.height = 150.0
                                    thisRoute = .firstSwitch
                                    
                                    }
                                }
                        
                            
                    }
                    
                    Spacer().frame(width: 50, height: 200)
                    
                }
                
            }
        }

    }
}

struct testseg3_Previews: PreviewProvider {
    static var previews: some View {
        testseg3()
    }
}
