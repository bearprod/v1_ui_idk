//
//  Home.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/19/23.
//

import SwiftUI

struct Home: View {
    
    
    @State var currentIndex: Int = 0
    
    var body: some View {
        VStack{
            //HeaderView()
            
            CustomCarousel(index: $currentIndex, items: list_names, cardPadding: 50, id: \.self){ item, cardSize in
                postType(img_name: item)
            }

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color("mydark"))
        .edgesIgnoringSafeArea(.all)
        
        
    }
    @ViewBuilder
    func HeaderView() -> some View{
        HStack{
            VStack(alignment: .leading, spacing: 6){
                Text("bitches")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
    
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
