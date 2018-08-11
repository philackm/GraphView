
import UIKit

public protocol ScrollableGraphViewDataSource : class {
    func value(forPlot plot: Plot, atIndex pointIndex: Int) -> Double
    func label(atIndex pointIndex: Int) -> String
    func numberOfPoints() -> Int // This now forces the same number of points in each plot.
    func plotLabel(shouldShowPlotLabel plot: Plot, atIndex pointIndex: Int) -> Bool
    func plotLabel(forPlot plot: Plot, atIndex pointIndex: Int) -> String?
}

extension ScrollableGraphViewDataSource {
    func plotLabel(shouldShowPlotLabel plot: Plot, atIndex pointIndex: Int) -> Bool { return false }
    func plotLabel(forPlot plot: Plot, atIndex pointIndex: Int) -> String? { return nil }
}
