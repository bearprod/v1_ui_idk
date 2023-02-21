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
            
            CustomCarousel(index: $currentIndex, items: movies, cardPadding: 50, id: \.id){ movie, cardSize in
                Image(movie.pic)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    //.frame(width: cardSize.width, height: cardSize.height)
                    .frame(width: 200.0, height: 200.0)
                    //.clipShape(Circle())
                    //.clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            }
            .background(.blue)
            .padding(.horizontal, -15)
            .padding(.vertical)
        }
        .padding([.horizontal, .top], 50)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background {
            GeometryReader{proxy in }
        }
        
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
