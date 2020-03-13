//
//  SwiftUIView.swift
//  McKendrickUI
//
//  Created by Steven Lipton on 3/8/20.
//  Copyright © 2020 Steven Lipton. All rights reserved.
//

import SwiftUI

struct ContentHeaderView: View {
    
    var headerTitle:String
    var headerSubtitle:String! = nil
    var body: some View {
        GeometryReader{ geometry in
        HStack {
//            Image(systemName: "chevron.right.2")
//                .font(Font.largeTitle.weight(.heavy))
//                .foregroundColor(.gold)
            Spacer()
            VStack(alignment:.leading){
                Text(self.headerTitle)
                    .font(.headline)
                    .fontWeight(.heavy)
                Text(self.headerSubtitle ?? "")
                    .font(.subheadline)
            }//Vstack
            .padding()
        }//HStack
            .frame(width:geometry.size.width)
            .background(LinearGradient(gradient: Gradient(stops: [Gradient.Stop(color: .darkGreen, location: 0.0),Gradient.Stop(color: .gold, location: 0.10)]), startPoint: .leading, endPoint: .trailing))
            .foregroundColor(.darkGreen)
            .cornerRadius(10)
        }//geometryreader
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ContentHeaderView(headerTitle: "Title", headerSubtitle: "")
    }
}
