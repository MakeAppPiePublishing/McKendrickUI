//
//  JacketView.swift
//  McKendrickUI
//
//  Created by Steven Lipton on 3/10/20.
//  Copyright © 2020 Steven Lipton. All rights reserved.
//

import SwiftUI

struct JacketView: View {
    var isSelected:Bool = false
    init(isSelected:Bool){
        self.isSelected = isSelected
    }
    var body: some View {
        GeometryReader{ geometry in
        VStack{
            ContentHeaderView(headerTitle: "SC Louis McKendrick",headerSubtitle: "Ships Roster detail")
                .frame(height:geometry.size.height * 0.1 )
                .padding(.bottom,50)
            ContentHeaderView(headerTitle: "Wang, Ishamael Horatio",headerSubtitle: "Messman Attendant")
            .frame(height:geometry.size.height * 0.1 )
            Spacer()
        }//Vstack root
            .layoutPriority(self.isSelected ? 1 : 0)
            .frame(width: self.isSelected ? geometry.size.width : 0)
            .opacity(self.isSelected ? 1 : 0)
        }//geometry reader
    }
}

struct JacketView_Previews: PreviewProvider {
    static var previews: some View {
        JacketView(isSelected: false)
    }
}
