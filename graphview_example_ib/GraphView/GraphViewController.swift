//
//  Simple example usage of ScrollableGraphView.swift
//  #######################################
//

import UIKit

class GraphViewController: UIViewController, PointSelectedProtocol {
    @IBOutlet var graphView: ScrollableGraphView?
    var data: [Double]?
    var labels: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        graphView?.pointSelectedDelegate = self
        guard let data = data, let labels = labels else {
            return
        }
        graphView?.set(data: data, withLabels: labels)
    }
    
    func pointWasSelectedAt(label: String, value: Double, location: CGPoint) {
        print("Point selected x:\(label) y:\(value) point:\(location)\n")
    }

}
