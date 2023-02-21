//
//  sunday15.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/19/23.
//

import SwiftUI

struct sunday15: View {
    @State private var showPopover = false

        var body: some View {
            Button("Show Popover") {
                showPopover = true
            }
            .popover(isPresented: $showPopover) {
                PopoverView()
            }
        }
    }

    struct PopoverView: View {
        var body: some View {
            Text("This is a popover!")
        }
    }

struct sunday15_Previews: PreviewProvider {
    static var previews: some View {
        sunday15()
    }
}
