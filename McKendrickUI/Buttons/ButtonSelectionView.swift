//
//  ButtonSelector.swift
//  McKendrickUI
//
// An exercise file for iOS Development Tips Weekly
// A weekely course on LinkedIn Learning for iOS developers
//  Season <#Season#> (Q<#quarter#> <#year#>) video <#video#>
//  by Steven Lipton (C)2020, All rights reserved
// Learn more at https://linkedin-learning.pxf.io/YxZgj
//This Week:  <#description#>
//  For more code, go to http://bit.ly/AppPieGithub
// Quarter Share, Ishmael Wang, Lois McKendrick, and
// Trader Tales of the Golden Age of the  Solar Clipper
// copyright Nathan Lowell, used with permission
// To read the novel behind this project, see https://www.amazon.com/Quarter-Share-Traders-Golden-Clipper-ebook/dp/B00AMO7VM4

import SwiftUI

struct ButtonSelectionView: View {
    @Binding var selectedIndex:Int
    var buttonTitles:[String]
    var body: some View {
        VStack{
            ForEach(0..<buttonTitles.count, id:\.self){ buttonIndex in
                TabletButtonView(title:self.buttonTitles[buttonIndex],index:buttonIndex,selected:self.$selectedIndex)
            }//foreach
        }//Vstack
    }
}

struct ButtonSelector_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSelectionView(selectedIndex:.constant(1),buttonTitles:["Comms","Handbook","News","Handbook"])
    }
}
