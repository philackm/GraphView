import UIKit
import PlaygroundSupport

let graphView = ScrollableGraphView(frame: CGRect.zero)

graphView.dataPointType = ScrollableGraphViewDataPointType.circle
graphView.shouldDrawBarLayer = true
graphView.shouldDrawDataPoint = false

graphView.lineColor = UIColor.clear()
graphView.barWidth = 25
graphView.barLineWidth = 1
graphView.barLineColor = UIColor.colorFromHex("#777777")
graphView.barColor = UIColor.colorFromHex("#555555")
graphView.backgroundFillColor = UIColor.colorFromHex("#333333")

graphView.referenceLineLabelFont = UIFont.boldSystemFont(ofSize: 8)
graphView.referenceLineColor = UIColor.white().withAlphaComponent(0.2)
graphView.referenceLineLabelColor = UIColor.white()
graphView.numberOfIntermediateReferenceLines = 5
graphView.dataPointLabelColor = UIColor.white().withAlphaComponent(0.5)

graphView.shouldAnimateOnStartup = true
graphView.shouldAdaptRange = true
graphView.adaptAnimationType = ScrollableGraphViewAnimationType.elastic
graphView.animationDuration = 1.5
graphView.rangeMax = 50
graphView.shouldRangeAlwaysStartAtZero = true

let data: [Double] = generateRandomData(50, max: 50)
let labels = generateSequentialLabels(50, text: "Label")

graphView.setData(data, withLabels: labels)

PlaygroundPage.current.liveView = graphView