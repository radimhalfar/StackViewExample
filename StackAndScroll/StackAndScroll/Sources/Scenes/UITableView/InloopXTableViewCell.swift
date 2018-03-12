//  Copyright © 2018 InloopX. All rights reserved.

import UIKit

final class InloopXTableviewCell: UITableViewCell {
	struct ViewModel {
		let title: String
		let info: String
	}
	@IBOutlet private weak var titleLabel: UILabel!
	@IBOutlet private weak var infoLabel: UILabel!

	func setModel(_ model: ViewModel) {
		titleLabel.text = model.title
		infoLabel.text = model.info
	}
}
