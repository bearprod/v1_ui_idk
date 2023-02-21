//
//  TestHome.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/21/23.
//

import SwiftUI

struct TestHome: View {
    var body: some View {
        VStack {
                   ForEach(posts, id: \.self) { post in
                       post
                   }
               }
    }
}

struct TestHome_Previews: PreviewProvider {
    static var previews: some View {
        TestHome()
    }
}
