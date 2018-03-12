//  Copyright © 2018 InloopX. All rights reserved.

import UIKit

/**
Explanation:
if using the stack view in code, do not forget about the tricky API if removing the views.
*/
final class CodeExampleViewController: UIViewController {
	@IBOutlet weak var stackView: UIStackView!

	@IBAction func addArrangedView() {
		guard let sampleView = Bundle.main.loadNibNamed("SampleView", owner: nil, options: nil)?.first as? UIView else { return }
		stackView.addArrangedSubview(sampleView)
		stackView.layoutIfNeeded()
	}

	@IBAction func removeArrangedSubview() {
		guard let arrangedSubview = stackView.arrangedSubviews.last else { return }
		stackView.removeArrangedSubview(arrangedSubview)
		// This line is crucial since if you do not remove it from the
		arrangedSubview.removeFromSuperview()
	}
}

