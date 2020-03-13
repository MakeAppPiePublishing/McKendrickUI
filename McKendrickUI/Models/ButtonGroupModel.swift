//
//  File.swift
//  McKendrickUI
//
//  Created by Steven Lipton on 3/6/20.
//  Copyright © 2020 Steven Lipton. All rights reserved.
//

import Foundation

struct ButtonGroupItem:Identifiable{
    var id:String
    var isSelected:Bool = false
}

class ButtonGroupModel{
    var buttons:[ButtonGroupItem]
    init(titles:[String]){
        buttons = []
        for title in titles{
            buttons += [ButtonGroupItem(id: title, isSelected: false)]
        }
    }//init
    func clearSelection(){
        for index in 0..<buttons.count{
            buttons[index].isSelected = false
        }
    }
}

