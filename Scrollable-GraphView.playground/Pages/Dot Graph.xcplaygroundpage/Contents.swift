import UIKit
import PlaygroundSupport

let graphView = ScrollableGraphView(frame: CGRect.zero)

graphView.backgroundFillColor = UIColor.colorFromHex("#00BFFF")
graphView.lineColor = UIColor.clear()

graphView.dataPointSize = 5
graphView.dataPointSpacing = 80
graphView.dataPointLabelFont = UIFont.boldSystemFont(ofSize: 10)
graphView.dataPointLabelColor = UIColor.white()
graphView.dataPointFillColor = UIColor.white()

graphView.referenceLineLabelFont = UIFont.boldSystemFont(ofSize: 10)
graphView.referenceLineColor = UIColor.white().withAlphaComponent(0.5)
graphView.referenceLineLabelColor = UIColor.white()
graphView.referenceLinePosition = ScrollableGraphViewReferenceLinePosition.both

graphView.numberOfIntermediateReferenceLines = 9

graphView.rangeMax = 50

let data: [Double] = generateRandomData(50, max: 50)
let labels = generateSequentialLabels(50, text: "Label")

graphView.setData(data, withLabels: labels)

PlaygroundPage.current.liveView = graphView
