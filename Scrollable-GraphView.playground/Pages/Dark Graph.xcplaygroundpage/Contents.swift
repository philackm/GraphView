import UIKit
import PlaygroundSupport

let graphView = ScrollableGraphView(frame: CGRect.zero)

graphView.backgroundFillColor = UIColor.colorFromHex("#333333")

graphView.lineWidth = 1
graphView.lineColor = UIColor.colorFromHex("#777777")
graphView.lineStyle = ScrollableGraphViewLineStyle.smooth

graphView.shouldFill = true
graphView.fillType = ScrollableGraphViewFillType.gradient
graphView.fillColor = UIColor.colorFromHex("#555555")
graphView.fillGradientType = ScrollableGraphViewGradientType.linear
graphView.fillGradientStartColor = UIColor.colorFromHex("#555555")
graphView.fillGradientEndColor = UIColor.colorFromHex("#444444")

graphView.dataPointSpacing = 80
graphView.dataPointSize = 2
graphView.dataPointFillColor = UIColor.white()

graphView.referenceLineLabelFont = UIFont.boldSystemFont(ofSize: 8)
graphView.referenceLineColor = UIColor.white().withAlphaComponent(0.2)
graphView.referenceLineLabelColor = UIColor.white()
graphView.numberOfIntermediateReferenceLines = 5
graphView.dataPointLabelColor = UIColor.white().withAlphaComponent(0.5)

graphView.shouldAnimateOnStartup = true
graphView.shouldAdaptRange = true
graphView.adaptAnimationType = ScrollableGraphViewAnimationType.elastic
graphView.animationDuration = 2.5
graphView.rangeMax = 50
graphView.shouldRangeAlwaysStartAtZero = true

let data: [Double] = generateRandomData(50, max: 50)
let labels = generateSequentialLabels(50, text: "Label")

graphView.setData(data, withLabels: labels)

PlaygroundPage.current.liveView = graphView
