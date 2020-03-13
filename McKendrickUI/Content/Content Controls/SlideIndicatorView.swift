//
//  SlideIndicatorView.swift
//  McKendrickUI
//
//  Created by Steven Lipton on 3/10/20.
//  Copyright © 2020 Steven Lipton. All rights reserved.
//

import SwiftUI

struct SlideIndicatorView:View {
    var sideLabels = ("High","Normal","Low")
    var topLabel:String = "Title"
    var bottomLabel:String = "Measure"
    var value:Double
    func warningColor()->Color{
        self.value > 0.8 ? .red : (self.value > 0.75 ? .yellow : (self.value > 0.6 ? .green : self.value > 0.3 ? .yellow : .red ))
    }
    var body: some View{
        VStack{
            Text(topLabel)
            HStack{
                VStack(alignment:.trailing){
                    Text(sideLabels.0)
                    Spacer()
                    Text(sideLabels.1)
                    Spacer()
                    Text(sideLabels.2)
                }
                GeometryReader{ geometery in
                    VStack{
                        Spacer()
                        RoundedRectangle(cornerRadius: 20)
                            .frame(height:geometery.size.height * CGFloat(self.value) )
                            .foregroundColor(.gold)
                    }//Vstack
                }// geo reader
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.green, lineWidth: 2)
                )
            }//Hstack
            Text("\(value) " + bottomLabel)
        } //VStack
    } // body
}

struct SlideIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        SlideIndicatorView(value:0.5)
    }
}
