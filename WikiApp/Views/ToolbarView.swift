//
//  ToolbarView.swift
//  WikiApp
//
//  Created by John K on 19/10/2019.
//  Copyright © 2019 John K. All rights reserved.
//

import SwiftUI

struct ToolBarView: View {
    @Binding  var currentHeight: CGFloat
    @Binding var movingOffset: CGFloat
    
    var body: some View {
        HStack{
            ToolbarButton(icon: "triangle", isSelected: true) {}
            Spacer()
            ToolbarButton(icon: "plus", isPlus: true) {
                withAnimation(.spring(dampingFraction: 0.7)) {
                    self.currentHeight = 0.0
                    self.movingOffset = 0.0
                }
            }
            .shadow(color: Color("green").opacity(0.5), radius: 5, x: 0.0, y: 10)
            Spacer()
            ToolbarButton( icon: "bubble.left", isSelected: false) {}
        }.padding(.top, 15)
            .padding(.horizontal, 30)
            .frame(minWidth: 0.0, maxWidth: .infinity)
            .offset(y: self.currentHeight == 0  ? -100 : 0)
    }
}


struct ToolBarView_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarView(currentHeight: .constant(0.0), movingOffset: .constant(0.0))
    }
}
