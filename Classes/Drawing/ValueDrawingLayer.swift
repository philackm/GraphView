//
//  ValueDrawingLayer.swift
//  ScrollableGraphView
//
//  Created by RiuHDuo on 2017/12/8.
//  Copyright © 2017年 SGV. All rights reserved.
//

import UIKit

class ValueDrawingLayer: ScrollableGraphViewDrawingLayer {
    
    let font: UIFont
    let color: UIColor
    
    private var textLayers = [CATextLayer]()
    
    init(frame: CGRect, font: UIFont, color: UIColor) {
        
        self.font = font
        self.color = color
        
        super.init(viewportWidth: frame.size.width, viewportHeight: frame.size.height)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createDataPointPath() {
        
        for layer in self.textLayers{
            layer.removeFromSuperlayer()
        }
        
        guard let activePointsInterval = self.owner?.graphViewDrawingDelegate?.intervalForActivePoints() else{ return}
        for i in activePointsInterval {
            
            var location = CGPoint.zero
            
            if let pointLocation = owner?.graphPoint(forIndex: i) {
                location = pointLocation.location
            }
            
            let layer = CATextLayer()
            layer.contentsScale = UIScreen.main.scale
            layer.string  = String(format:"%.2f", self.owner?.data[i] ?? 0)
            layer.bounds = CGRect(x: 0, y: 0, width: 60, height: 14)
            layer.font = self.font.fontName as CFTypeRef
            layer.fontSize = self.font.pointSize
            layer.alignmentMode = kCAAlignmentCenter
            layer.position = CGPoint(x: location.x, y: location.y - 10)
            layer.foregroundColor = UIColor.black.cgColor
            self.addSublayer(layer)
            self.textLayers.append(layer)
        }
        
        
    }
    
    
    
    override func updatePath() {
        createDataPointPath()
    }
}
