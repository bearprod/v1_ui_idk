//
//  testSegue.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/22/23.
//

import SwiftUI
import SwiftUISegues


struct testSegue: View {
    // All the routes that lead from this view to the next ones
    enum Route: Hashable {
        case switchTest, modalTest, popoverTest
    }
    
    // Triggers segues when its values are changes
    @State private var route: Route? = nil
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Button("would nut") {
                    // Navigate by setting route values
                    route = .switchTest
                }
                Button("Modal") {
                    route = .modalTest
                }
                Button("Popover") {
                    route = .popoverTest
                }
            }
            .navigationBarTitle("SwiftUI Segues", displayMode: .inline)
            
            // Here are individual, mixed segues, with their destinations
            .segue(.switch(.slide, .easeInOut(duration: 2)), tag: .switchTest, selection: $route) {
                Text("did we switch?")
                    .background(Color("mydark"))
            }
            .segue(.modal, tag: .modalTest, selection: $route) {
                Button("Welcome to modal") {
                    route = nil
                }
            }
            .segue(.popover(.rect(.bounds), .top), tag: .popoverTest, selection: $route) {
                Text("Welcome to Popover")
            }
            //.seque(.switch()
        }
    }
}

struct testSegue_Previews: PreviewProvider {
    static var previews: some View {
        testSegue()
    }
}
