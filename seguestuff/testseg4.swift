//
//  testseg4.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/25/23.
//

import SwiftUI

struct testseg4: View {
    
    enum Route: Hashable {
        case firstSwitch
    }
    
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
                            .onTapGesture {
                                withAnimation{
                                    thisRoute = .firstSwitch
                                    
                                    }
                                }
                            .segue(.switch(.asymmetric(insertion: .move(edge: .top).combined(with: .offset(y: -200)), removal: .identity),  .easeInOut(duration: 2)), tag: .firstSwitch, selection: $thisRoute) {
                                sunday4(img_name: "alix")
                            }
                        
                            
                    }
                    
                    Spacer().frame(width: 50, height: 200)
                    
                }
                
            }
        }

    }
}

struct testseg4_Previews: PreviewProvider {
    static var previews: some View {
        testseg4()
    }
}
