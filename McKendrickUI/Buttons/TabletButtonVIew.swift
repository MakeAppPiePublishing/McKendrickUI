//
//  TabletButton.swift
//  McKendrickUI
//
//  Created by Steven Lipton on 3/6/20.
//  Copyright © 2020 Steven Lipton. All rights reserved.
//

import SwiftUI

struct TabletButtonView:View{
    var title:String
    var index:Int
    @Binding var selected:Int  //10_08 (maybe leave)
    func buttonAction(){
            selected = index //10_08
        }
    var isSelected:Bool {selected == index} //10_08
    var body: some View{
        GeometryReader{ geometry in
            Button(action:{self.buttonAction()}){
                Text(self.title)
                    .foregroundColor(self.isSelected ? .darkGreen: .gold)//10_08
                    .font(.caption)
                    .padding(3)
            }//Button
                .frame(width:geometry.size.width, height:geometry.size.height ) //10_07
                .background(self.isSelected ? Color.gold : Color.clear) //10_08
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gold, lineWidth: 2)
                )//overlay
        }//geometryreader
    }//body
}


struct TabletButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TabletButtonView(title:"Send Coffee!", index:0, selected:.constant(0))
    }
}
