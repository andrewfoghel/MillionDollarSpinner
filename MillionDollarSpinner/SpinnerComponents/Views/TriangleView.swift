//
//  TriangleView.swift
//  MillionDollarSpinner
//
//  Created by Andrew  Foghel on 12/1/18.
//  Copyright © 2018 Andrew  Foghel. All rights reserved.
//


// TODO: Make colors more dynamic(handled by random) perhaps an enum to
// chose random colors or set them manually 

import UIKit

class TriangleView : UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func draw(_ rect: CGRect) {
        
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        context.beginPath()
        context.move(to: CGPoint(x: rect.minX, y: rect.maxY))
        context.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        context.addLine(to: CGPoint(x: (rect.maxX / 2.0), y: rect.minY))
        context.closePath()
        
        context.setFillColor(red: 1.0, green: 0.5, blue: 0.0, alpha: 0.60)
        context.fillPath()
    }
}

/// Code comes from https://stackoverflow.com/questions/30650343/triangle-uiview-swift
/// seems to be working as expected, GPU rendering is also fairly quick
