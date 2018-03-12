//  Copyright © 2018 InloopX. All rights reserved.

import UIKit

/**
Explanation:
As you might notice, the layout is the same as in the breaking constraints. The only change
made is that the leading label has the width constraint priority set to 999. This will ensure, that it won't
generate the conflicting constraints issue.
*/
final class NonBreakingConstraintsViewController: UIViewController {
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
