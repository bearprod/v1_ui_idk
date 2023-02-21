//
//  postType.swift
//  v1_ui
//
//  Created by Alex Bearducci on 2/21/23.
//

import SwiftUI

struct postType: View, Hashable{
    
    var img_name: String = "me"
    
    let color: String = "mypink"
    
    var body: some View {
        Image(img_name)
            .resizable()
            .frame(width: 200, height: 200)
            //.blur(radius: 8)
            .clipShape(Circle())
            .shadow(color: Color(color), radius: 8)
            .shadow(color: Color(color), radius: 8)
            .shadow(color: Color(color), radius: 8)
           
    }
}

let list_names = ["addison", "alix", "az", "dixie", "drake", "jordan", "kim", "livy", "me_2", "me", "rando", "sam", "ye"]

let posts = list_names.map {name in
    postType(img_name: name)
}

struct postType_Previews: PreviewProvider {
    static var previews: some View {
        postType()
    }
}
