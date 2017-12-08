//
//  ValuePlot.swift
//  ScrollableGraphView
//
//  Created by RiuHDuo on 2017/12/8.
//  Copyright © 2017年 SGV. All rights reserved.
//

import UIKit

open class ValuePlot: Plot {
    private var dataPointLayer: ValueDrawingLayer?
    
    open var font = UIFont.systemFont(ofSize: 10)
    open var color = UIColor.black
    
    public init(identifier: String) {
        super.init()
        self.identifier = identifier
    }
    
    override func layers(forViewport viewport: CGRect) -> [ScrollableGraphViewDrawingLayer?] {
        createLayers(viewport: viewport)
        return [dataPointLayer]
    }
    
    private func createLayers(viewport: CGRect) {
        dataPointLayer = ValueDrawingLayer(frame: viewport, font: font, color: color)
        dataPointLayer?.owner = self
    }
}
