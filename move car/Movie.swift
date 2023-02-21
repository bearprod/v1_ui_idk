//
//  Movie.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/19/23.
//

import SwiftUI

struct Movie: Identifiable, Equatable {
    var id = UUID().uuidString
    var name: String
    var pic: String
}

var movies: [Movie] = [
    Movie(name: "alex", pic: "me"),
    Movie(name: "jord", pic: "jordan"),
    Movie(name: "arizia", pic: "az"),
    Movie(name: "kaney", pic: "ye")
]

