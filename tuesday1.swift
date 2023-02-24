//
//  tuesday1.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/21/23.
//

import SwiftUI

struct tuesday1: View {
    let items = ["View 1", "View 2", "View 3", "View 4", "View 5"]
    @State var selectedIndex = 0
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 0) {
                ForEach(items, id: \.self) { item in
                    Text(item)
                        .foregroundColor(selectedIndex == items.firstIndex(of: item) ? .blue : .gray)
                        .frame(width: UIScreen.main.bounds.width, height: 300)
                }
            }
            .onAppear {
                UIScrollView.appearance().isPagingEnabled = true
            }
            .coordinateSpace(name: "scroll")
        }
        .content.offset(x: UIScreen.main.bounds.width * CGFloat(selectedIndex), y: 0)
        .frame(width: UIScreen.main.bounds.width, height: 300)
        .onAppear {
            selectedIndex = 0
        }
        .onReceive(NotificationCenter.default.publisher(for: .init("scrollToIndex"))) { (output) in
            if let index = output.object as? Int {
                selectedIndex = index
            }
        }
    }
}

struct tuesday1_Previews: PreviewProvider {
    static var previews: some View {
        tuesday1()
    }
}
