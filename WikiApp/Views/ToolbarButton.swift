//
//  ToolbarButton.swift
//  WikiApp
//
//  Created by John K on 19/10/2019.
//  Copyright © 2019 John K. All rights reserved.
//


import SwiftUI

struct ToolbarButton: View{
    
    var icon = "bubble.left"
    var isSelected = false
    var isPlus = false
    var action: (()->()) = {}

    
    var body: some View{
        let selectedColor = "orange"
        
        return Button(action: {
            self.action()
        }) {
            HStack {
                Image(systemName: self.icon)
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .foregroundColor( isPlus ? Color.white : isSelected ? Color(selectedColor) : Color.gray)
                
            }.padding(10)
                .background(isPlus ? Color("green") : isSelected ? Color(selectedColor).opacity(0.2) : Color.gray.opacity(0.2))
                .cornerRadius(10)
        }
    }
}


struct ToolbarButton_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarButton()
    }
}
