//
//  firstfunctest.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/25/23.
//

import SwiftUI
import SwiftUISegues

struct firstfunctest: View {
        
    var body: some View {
        ZStack{
            Color("mydark")
                .edgesIgnoringSafeArea(.all)
                .background(Color("mydark"))
            VStack (spacing: 50.0){
                postcomp(img_name: "jordan")
                postcomp(img_name: "me")
                postcomp(img_name: "ye")
            }
            
        }
    }
    
}



struct postcomp: View {
    
    enum Route: Hashable {
        case firstSwitch // add other names as u see fit
    }
    
    @State private var thisRoute: Route? = nil
    
    var img_name: String = "me"
    
    var size: Double = 80.0
    
    var body: some View {
            ZStack{
                Image(img_name)
                    .resizable()
                    .frame(width: size, height: size)
                    //.blur(radius: 8)
                    .clipShape(Circle())
            }
            .shadow(color: .pink, radius: 8)
            .shadow(color: .pink, radius: 8)
            .shadow(color: .pink, radius: 8)
            .onTapGesture {
                withAnimation(.easeIn(duration: 2.0)){
                    
                    thisRoute = .firstSwitch
                    // call the make, idk think solid right now
                    
                    }
                }
            .segue(.switch(.asymmetric(insertion: .move(edge: .top).combined(with: .offset(y: -200)), removal: .opacity),  .easeInOut(duration: 2)), tag: .firstSwitch, selection: $thisRoute) {
                makemain(input: postcomp(img_name: self.img_name))
            }
                
            
                
    }
    
    // good shit, def want videos tn to get grasp of things, standford for sure
    
    @ViewBuilder func makemain(input: postcomp) -> some View{
        input
            .scaleEffect(2)
            .offset(x: 0, y: -80)
               
    }
    
    func changePost(_ modifier: (postcomp) -> postcomp) -> postcomp {
            modifier(self)
        }
    
    func increaseScale() -> some View {
            self.scaleEffect(2)
        }
}


struct firstfunctest_Previews: PreviewProvider {
    static var previews: some View {
        firstfunctest()
    }
}
