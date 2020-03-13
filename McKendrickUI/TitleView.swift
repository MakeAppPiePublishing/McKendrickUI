//
//  TitleView.swift
//  McKendrickUI
//
//  Created by Steven Lipton on 3/6/20.
//  Copyright © 2020 Steven Lipton. All rights reserved.
//

import SwiftUI

struct TitleView: View {
    var subtitle:String
    init(){
        subtitle = ""
    }
    init(subtitle:String){
        self.subtitle = subtitle
    }
    var body: some View {
        VStack{
            Text("SC Lois McKendrick")
                .font(.largeTitle)
            Text(subtitle)
                .font(.headline)
        }
    }
}


struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        //TestTitleView(count: 10)
        TitleView()
    }
}
