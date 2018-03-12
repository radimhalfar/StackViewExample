//  Copyright © 2018 InloopX. All rights reserved.

import UIKit

/**
Explanation:
If you are not modifying the contents of the cells, you have no trouble with the autolayout.
In case you would like to use custom views, hide them, reuse them, reposition them or modify them
in any manner, do not forget the 999 rule!
*/
final class UITableExampleViewController: UITableViewController {
	struct ViewModel {
		var items: [InloopXTableviewCell.ViewModel]

		mutating func generateItem() {
			items.append(InloopXTableviewCell.ViewModel(
				title: "InloopX + UIStackView = ❤️",
				info: UITableExampleViewController.formatter.string(from: Date())
				)
			)
		}
	}
	private static let formatter: DateFormatter = {
		let formatter = DateFormatter()
		formatter.dateFormat = "hh:mm:ss yyyy-MM-dd"
		return formatter
	}()

	private var model = ViewModel(items: [])

	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return model.items.count
	}

	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "inloopX") as? InloopXTableviewCell
		cell?.setModel(model.items[indexPath.row])
		return cell ?? UITableViewCell()
	}

	@IBAction func addItem() {
		model.generateItem()
		tableView.reloadData()
	}
}
