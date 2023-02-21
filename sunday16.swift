//
//  sunday16.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/19/23.
//

import SwiftUI

struct sunday16: View {
    var body: some View {
        ScrollView([.horizontal, .vertical]) {
            VStack {
                Text("Bananas 🍌🍌")
                Text("Apples 🍏🍏")
                Text("Peaches 🍑🍑")
            }
        }
    }
}

struct sunday16_Previews: PreviewProvider {
    static var previews: some View {
        sunday16()
    }
}
