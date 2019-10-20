//
//  RoundedShape.swift
//  WikiApp
//
//  Created by John K on 19/10/2019.
//  Copyright © 2019 John K. All rights reserved.
//

import SwiftUI

struct RoundedShape: Shape {
    func path(in rect: CGRect) -> Path {
        let cornerRadius:CGFloat = 40
        var path = Path()
        
        path.move(to:  CGPoint(x: 0, y: cornerRadius))
        path.addQuadCurve(to: CGPoint(x: cornerRadius, y: 0), control: CGPoint.zero)
        path.addLine(to: CGPoint(x: rect.width - cornerRadius, y: 0))
        path.addQuadCurve(to: CGPoint(x: rect.width, y: cornerRadius), control: CGPoint(x: rect.width , y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        path.addLine(to: CGPoint(x: 0, y: rect.height))
        path.closeSubpath()

        return path
    }
}
