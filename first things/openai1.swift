//
//  openai1.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/11/23.
//

import SwiftUI

struct openai1: View {
    var body: some View {
        ZStack {
                   Rectangle()
                       .fill(LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                       .frame(width: 2, height: 60)
                       .cornerRadius(1)
                       .shadow(color: .yellow, radius: 10, x: 0, y: 10)
                       .shadow(color: .red, radius: 10, x: 0, y: -10)

                   Rectangle()
                       .fill(LinearGradient(gradient: Gradient(colors: [.red, .yellow]), startPoint: .topLeading, endPoint: .bottomTrailing))
                       .frame(width: 2, height: 60)
                       .cornerRadius(1)
                       .shadow(color: .red, radius: 10, x: 0, y: 10)
                       .shadow(color: .yellow, radius: 10, x: 0, y: -10)
               }
    }
}

struct openai1_Previews: PreviewProvider {
    static var previews: some View {
        openai1()
    }
}
