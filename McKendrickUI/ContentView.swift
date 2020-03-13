//
//  ContentView.swift
//  McKendrickUI
//
//  Created by Steven Lipton on 3/6/20.
//  Copyright © 2020 Steven Lipton. All rights reserved.
//

import SwiftUI

let buttonTitles = ["Comms","Jackets","Spacer Handbook","Ship Functions","News" ]

struct ContentView: View {
    @State var index:Int = 0
    var body: some View {
        GeometryReader{ geometry in
        VStack{
            TitleView(subtitle: buttonTitles[self.index])
            .foregroundColor(.gold)
            .padding([.bottom],10)
            .padding(.top,40)
            HStack{
                ZStack{ //Content
                    CommsView(isSelected: self.index == 0).animation(.default)
                    JacketView(isSelected: self.index == 1).animation(.default)
                    HandbookView(isSelected: self.index == 2).animation(.default)
                    EnvironmentalView(isSelected: self.index == 3).animation(.default)
                    BusinessNewsView(isSelected: self.index == 4).animation(.default)
                } //Zstack
                    .frame(width:geometry.size.width * (2.0/3.0))
                    .foregroundColor(.gold)
                GeometryReader{ geo in
                VStack { //buttons
                    
                    ButtonSelectionView(selectedIndex: self.$index, buttonTitles:buttonTitles)
                    
                }//vstack
                    .frame(height:geo.size.height * (2/3) )
                }//geometery
            }
            Spacer()
            FootNoteView()
                .padding([.leading,.trailing], 10)
        }
        .background(Color.darkGreen)
        
        
        }//Geometryreder

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
