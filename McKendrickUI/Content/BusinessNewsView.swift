//
//  BusinessNewsView.swift
//  McKendrickUI
//
//  Created by Steven Lipton on 3/8/20.
//  Copyright © 2020 Steven Lipton. All rights reserved.
//

import SwiftUI

struct BusinessNewsView: View {
    var isSelected:Bool = false
    init(isSelected:Bool){
        self.isSelected = isSelected
    }
    var body: some View {
        GeometryReader{ geometry in
        VStack{
            ContentHeaderView(headerTitle:"Business News")
            .frame(height:geometry.size.height * 0.1 )
            ScrollView(.vertical){
                VStack{
            HeadlineView("Orbital Station Reform Begins Debate")
            Text("""
Port Newmar -  The controversial Orbital Autonomy Act began debate by the Rules subcommittee of the CPJCT this week.  Under the act, while remaining under CPJCT jurisdiction, local affairs and orbital design issues would become the direct responsibility of the Orbital station manager. Station interior design regulations would be removed from CPJCT regulations, along with CPJCT supervision of vendors on the station. Geoffrey Maloney, CEO of Diurnia Salvage and Transport is championing the reforms. "We've been regulating these stations to be completely identical, and they are not able to meet market conditions" said Maloney.  "If, for example market conditions support an art gallery or more restaurants, why shouldn't the station have them? We forbid them now." Opponents want to keep standards for ship crews and station personnel for safety and security reasons.
""")
                .multilineTextAlignment(.leading)
            HeadlineView("Pirano Fisheries on Target for Banner Year Amid Possible Employment Problems")
            Text("""
 Pirano Fisheries (PRI +2.45) is on target for a banner year, with a huge uptick in crab exports. However, Sources close to management at Pirano gave indications there is trouble in the wind-blown paradise. Pirano is considering undisclosed changes to employment and residence requirements on St. Cloud as a cost cutting measure. Pirano executives could not be reached for comment on this story.
""")
            HeadlineView("Fine Coffees Taking a Hit in Prices")
            Text("""
Fine Coffees Taking a Hit in Prices.
Coffee prices for gourmet and rare coffees are falling drastically. A bumper crop of Sarabanda dark are dropping prices on gourmet coffee throughout the Annex. TIC and CPJCT are investigating a possible price fixing scheme. The more common Djartmo Arabasti in this glut of fine coffees is harder to find, and prices are increasing.
""")
            }//VStack
            }//ScrollView
            Spacer()
        }//VStack
            .layoutPriority(self.isSelected ? 1 : 0)
            .frame(width: self.isSelected ? geometry.size.width : 0)
            .opacity(self.isSelected ? 1 : 0)
            
        }// geometryreader
    }
    
}

struct PriceView:View {
    var item:String
    var price:Double
    
    func formattedPrice()->String{
        return NumberFormatter.localizedString(from: NSNumber(value: price), number: .decimal)
    }
    
    var body: some View{
        HStack{
            Text(item)
                .multilineTextAlignment(.trailing)
                .padding(.trailing,20)
            Image(systemName: "creditcard")
            Text(formattedPrice())
            Spacer()
        }
    }
}

        

struct BusinessNewsView_Previews: PreviewProvider {
    static var previews: some View {
        BusinessNewsView(isSelected: true)
    }
}
