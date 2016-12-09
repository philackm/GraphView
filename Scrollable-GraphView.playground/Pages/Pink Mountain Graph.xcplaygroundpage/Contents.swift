import UIKit
import PlaygroundSupport

let graphView = ScrollableGraphView(frame: CGRect.zero)

graphView.backgroundFillColor = UIColor.colorFromHex("#222222")
graphView.lineColor = UIColor.clear()

graphView.shouldFill = true
graphView.fillColor = UIColor.colorFromHex("#FF0080")

graphView.shouldDrawDataPoint = false
graphView.dataPointSpacing = 20
graphView.dataPointLabelFont = UIFont.boldSystemFont(ofSize: 10)
graphView.dataPointLabelColor = UIColor.white()

graphView.dataPointLabelsSparsity = 3

graphView.referenceLineThickness = 1
graphView.referenceLineLabelFont = UIFont.boldSystemFont(ofSize: 10)
graphView.referenceLineColor = UIColor.white().withAlphaComponent(0.5)
graphView.referenceLineLabelColor = UIColor.white()
graphView.referenceLinePosition = ScrollableGraphViewReferenceLinePosition.both

graphView.numberOfIntermediateReferenceLines = 1

graphView.shouldAdaptRange = true

graphView.rangeMax = 50

let data: [Double] = generateRandomData(50, max: 50)
let labels = generateSequentialLabels(50, text: "Label")

graphView.setData(data, withLabels: labels)

PlaygroundPage.current.liveView = graphView