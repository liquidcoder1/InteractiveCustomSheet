//
//  ContentView.swift
//  WikiApp
//
//  Created by John K on 17/10/2019.
//  Copyright © 2019 John K. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var currentHeight: CGFloat = 0.0
    @State private var movingOffset: CGFloat = 0.0
    
    var body: some View {
        ZStack {
            NavigationView {
                ScrollView( showsIndicators: false) {
                    VStack(spacing: 20){
                        HStack(spacing: 20){
                            WikiCard()
                            WikiCard(icon: "lock.fill", color: "blue", text: "Private")
                        }
                        
                        HStack(spacing: 20){
                            WikiCard(icon: "bookmark.fill", color: "purple", text: "Bookmarked")
                            WikiCard(icon: "macwindow", color: "green", text: "Templates")
                        }
                        
                    }
                }.padding(.horizontal)
                    .padding(.bottom, 30)
                    .navigationBarTitle("Wiki Lists")
                    .navigationBarItems(leading: Button(action: {
                    }) {
                        Image(systemName: "chart.bar").resizable().modifier(NavIconStyle())
                        }, trailing: Button(action: {
                            
                        }){
                            Image(systemName: "chart.pie").resizable().modifier(NavIconStyle())
                    })
            }
            
            CustomSheetView(currentHeight: self.$currentHeight, movingOffset: self.$movingOffset)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
