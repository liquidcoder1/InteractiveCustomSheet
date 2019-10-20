//
//  NavIconStyle.swift
//  WikiApp
//
//  Created by John K on 18/10/2019.
//  Copyright © 2019 John K. All rights reserved.
//

import SwiftUI

struct NavIconStyle: ViewModifier {
    func body(content: Content) -> some View {
        content.frame(width: 20, height: 20).foregroundColor(Color.black)
    }
}
