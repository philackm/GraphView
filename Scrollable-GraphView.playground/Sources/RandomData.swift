import Foundation

public func generateRandomData(_ numberOfItems: Int, max: Double) -> [Double] {
	var data = [Double]()
	for _ in 0 ..< numberOfItems {
		var randomNumber = Double(arc4random()).truncatingRemainder(dividingBy: max)
		
		if(arc4random() % 100 < 10) {
			randomNumber *= 3
		}
		
		data.append(randomNumber)
	}
	return data
}

public func generateSequentialLabels(_ numberOfItems: Int, text: String) -> [String] {
	var labels = [String]()
	for i in 0 ..< numberOfItems {
		labels.append("\(text) \(i+1)")
	}
	return labels
}
