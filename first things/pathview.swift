//
//  pathview.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/7/23.
//

import SwiftUI

struct pathview: View {
    var body: some View {
        line_view()
    }
}

struct line_view: View {
    var body: some View{
        Path() { path in
            path.move(to: CGPoint(x: 50, y: 150))
            path.addLine(to: CGPoint(x: 350, y: 150))
        }
        .stroke(Color.black, lineWidth: 4)
    }
}

struct pathview_Previews: PreviewProvider {
    static var previews: some View {
        pathview()
    }
}
