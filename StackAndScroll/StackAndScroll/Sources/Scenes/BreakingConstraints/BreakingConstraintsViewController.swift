//  Copyright © 2018 InloopX. All rights reserved.

import UIKit

/**
Explanation:
If you take a look to the storyboard and the two lables in the horizontal stack view,
you may notice all three views have width constraints which will typically lead to breaking
constraints if the centered space is gonna be removes. It doens't matter which one of the three
views will be removed, because the constraints will always break. The distribution of the stack view
is set to fill, thus it has to stretch one of the views leading to unsatisfiable constraints.
*/
final class BreakingConstraintsViewController: UIViewController {
	@IBOutlet weak var hidingView: UIView!

	override func viewDidLoad() {
		super.viewDidLoad()
		navigationItem.title = "Break the constraints"
	}

	@IBAction func generateAutolayoutIssue(_ sender: Any) {
		UIView.animate(withDuration: 0.3) {
			self.hidingView.isHidden = !self.hidingView.isHidden
		}
	}
}
