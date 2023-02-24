//
//  CustomCarousel.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/20/23.
//

import SwiftUI

struct CustomCarousel<Content: View,Item,ID>: View where Item: RandomAccessCollection,ID: Hashable,ID: Equatable {
    var content: (Item.Element, CGSize)->Content
    var id: KeyPath<Item.Element, ID>
    
    var spacing: CGFloat
    var cardPadding: CGFloat
    var items: Item
    @Binding var index: Int
    
    init(index: Binding<Int>, items: Item, spacing: CGFloat = 50, cardPadding: CGFloat = 50, id: KeyPath<Item.Element, ID>, @ViewBuilder content: @escaping (Item.Element, CGSize) -> Content){
        self.content = content
        self.id = id
        self._index = index
        self.spacing = spacing
        self.cardPadding = cardPadding
        self.items = items
    }
    
    
    @GestureState var translation: CGFloat = 0
    @State var offset: CGFloat = 0
    @State var lastStoredOffset: CGFloat = 0
    
    @State var currentIndex: Int = 0
    
    var body: some View {
        
        
        GeometryReader{proxy in
            let size = proxy.size
            
            let cardWidth = size.width - (cardPadding - spacing)
            
                
                LazyHStack(spacing: spacing){
                    ForEach(items, id: id){item in
                        content(item, CGSize(width: size.width - cardPadding, height: size.height))
                            .frame(width: size.width - cardPadding, height: size.height / 2)
                        //.contentShape(Rectangle())
                            //.background(.blue)
                    }
                }
                .padding(.horizontal, spacing)
                .offset(x: limitScroll())
                .contentShape(Rectangle()) //.frame(width: 500, height: size.height / 2)
                .gesture(
                    DragGesture(minimumDistance: 5)
                        .updating($translation, body: {value, out, _ in
                            out = value.translation.width})
                        .onChanged{onChanged(value: $0, cardWidth: cardWidth)
                        }
                        .onEnded{onEnd(value: $0, cardWidth: cardWidth)
                            print("Offset: \(self.offset)")
                        }
                )
            }
            .onAppear{
                let extraSpace = (cardPadding / 2) - spacing
                offset = extraSpace
                lastStoredOffset = extraSpace
            }
            .animation(.easeInOut, value: translation == 0)
        
    }
    
    func limitScroll()->CGFloat {
        let extraSpace = (cardPadding / 2) // - spacing
        if index == 0 && offset > extraSpace{
            return extraSpace + (offset / 4)
        }else if index == items.count - 1 && translation < 0{
            return offset - (translation / 2)
        }else{
            //print(offset)
            return offset
        }
            
    }
        
    func onChanged(value: DragGesture.Value, cardWidth: CGFloat){
            let translationX = value.translation.width
            offset = translationX + lastStoredOffset
            
        }
        
    func onEnd(value: DragGesture.Value, cardWidth: CGFloat){
            
        var _index = (offset / cardWidth).rounded()
        _index = max(-CGFloat(items.count - 1), _index)
        _index = min(_index,0)
        
        currentIndex = Int(_index)
        
        index = -currentIndex
        
        withAnimation(.easeInOut(duration: 0.25)){
            let extraSpace = (cardPadding / 2) - spacing
            offset  = (cardWidth * _index) + extraSpace
        }
        
        
            lastStoredOffset = offset
        }

}

struct CustomCarousel_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
