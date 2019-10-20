//
//  WikiCard.swift
//  WikiApp
//
//  Created by John K on 17/10/2019.
//  Copyright © 2019 John K. All rights reserved.
//

import SwiftUI

struct WikiCard: View {
        var icon = "book.fill"
       var color = "orange"
       var text = "All Wikis"
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 15 ){
                Image(systemName: icon).foregroundColor(Color.white)
                Text(text).foregroundColor(Color.white)
            }.padding()
                .frame(minWidth: 0.0, maxWidth: .infinity, alignment: .leading)
                .background(Color(color))
                .cornerRadius(15)
            
            HStack {
                Spacer()
                Image(systemName: icon).resizable()
                    .foregroundColor(Color.white.opacity(0.3))
                    .frame(width: 40, height: 40)
                    .aspectRatio(contentMode: .fit)
                    
            }.padding()
            
        }.shadow(color: Color(color).opacity(0.4), radius: 10, x: 0, y: 5)
    }
}

struct WikiCard_Previews: PreviewProvider {
    static var previews: some View {
        WikiCard()
    }
}
