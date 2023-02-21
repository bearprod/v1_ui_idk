//
//  circle_layout.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/6/23.
//

import SwiftUI

struct circle_layout: View {
    
    var body: some View {
        ZStack{
            Rectangle() .foregroundColor(Color("mydark"))
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("az")
                    .resizable()
                    .frame(width: 170.0, height: 170.0)
                mycambutton()
            }
            
            
        }
    }
}

// want to have circle variable like boi did
struct mycirc: View {
    
    var color_var: String = "mywhite"
    var body: some View {
        Circle()
            .frame(width: 170.0, height: 170.0)
            .foregroundColor(Color(color_var))
        
    }
}

struct mycambutton: View {
    
    var color_var: String = "mypurple"
    var body: some View {
        
        Button(action: camera_pop){
            Circle()
                .frame(width: 130.0, height: 130.0)
                .foregroundColor(Color(color_var))
    
        }
        Button(action: camera_pop){
            Circle()
                .frame(width: 130.0, height: 130.0)
                .foregroundColor(Color(color_var))
                .opacity(0.6)
        }

        
    }
}

func camera_pop(){
    // this function should do something
    return
    
}


struct person_view: View {
    
    var name: String = "me"
    
    var body: some View {
        Image(name)
            .resizable()
            .frame(width: 170.0, height: 170.0)
    }
}



struct circle_layout_Previews: PreviewProvider {
    static var previews: some View {
        circle_layout()
    }
}


