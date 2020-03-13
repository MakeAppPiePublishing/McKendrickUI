//
//  HandbookView.swift
//  McKendrickUI
//
//  Created by Steven Lipton on 3/10/20.
//  Copyright © 2020 Steven Lipton. All rights reserved.
//

import SwiftUI

struct HandbookView: View {
    var isSelected:Bool = false
    init(isSelected:Bool){
        self.isSelected = isSelected
    }
    var body: some View {
        GeometryReader{ geometry in
        VStack{
            ContentHeaderView(headerTitle: "Spacer Handbook", headerSubtitle: "With Federated Freight Amendations and Standing Orders of SC Lois McKendrick ")
                .frame(height:geometry.size.height * 0.1 )
            
            Text("Spacer's Handbook")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.bottom,40)
            Text("Rules, Regulations, and Guidance for Spacers")
                .font(.title)
            Text("Confederated Planets Joint Committee on Trade")
                .font(.title)
            Text("Current Edition: 2352")
                .font(.headline)
            Spacer()
            Text("SC Lois McKendrick, Federated Freight")
            Spacer()
        }//Vstack root
            .layoutPriority(self.isSelected ? 1 : 0)
            .frame(width: self.isSelected ? geometry.size.width : 0)
            .opacity(self.isSelected ? 1 : 0)
        }
    }
}

struct HandbookView_Previews: PreviewProvider {
    static var previews: some View {
        HandbookView(isSelected: true)
    }
}
