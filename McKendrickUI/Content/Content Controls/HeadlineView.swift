//
//  HeadlineView.swift
//  McKendrickUI
//
//  Created by Steven Lipton on 3/10/20.
//  Copyright © 2020 Steven Lipton. All rights reserved.
//

import SwiftUI

struct HeadlineView:View{
    var headline:String
    init(_ headline:String){
        self.headline = headline
    }
    var body: some View{
        HStack {
            Text(headline)
                .font(.headline)
                .fontWeight(.black)
            Spacer()
        }
        .padding([.top], 15)
        .padding([.leading,.trailing,.bottom], 5)
    }
}

struct HeadlineView_Previews: PreviewProvider {
    static var previews: some View {
        HeadlineView("A sample Headline")
    }
}
