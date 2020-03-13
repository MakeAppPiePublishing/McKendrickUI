//
//  CommsView.swift
//  McKendrickUI
//
//  Created by Steven Lipton on 3/10/20.
//  Copyright © 2020 Steven Lipton. All rights reserved.
//

import SwiftUI

struct CommsView: View {
    let commTitles = ["Ship Department Directory","Crew Directory","Tablet to Tablet","Ship Systems","Orbital Communications Link"]
    var isSelected:Bool = false
    init(isSelected:Bool){
        self.isSelected = isSelected
    }
    var body: some View {
        GeometryReader{ geometry in
        VStack{
            ContentHeaderView(headerTitle: "Communication Functions", headerSubtitle: "SC Lois McKendrick and Local comms operational")
            .frame(height:geometry.size.height * 0.1 )
            ForEach(self.commTitles,id:\.self){ item in
                HStack{
                    Text(item).padding()
                    Spacer()
                    Image(systemName: "chevron.right")
                }
            .padding()
            }
            
            Spacer()
        }//Vstack root
            .layoutPriority(self.isSelected ? 1 : 0)
            .frame(width: self.isSelected ? geometry.size.width : 0)
            .opacity(self.isSelected ? 1 : 0)
            
        }//GeometryReader
    }
}

struct CommsView_Previews: PreviewProvider {
    static var previews: some View {
        CommsView(isSelected: true)
    }
}
