//
//  HistoryTableViewCell.swift
//  Learn English
//
//  Created by Богдан Плакущий on 17.02.2023.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {
    
    
    @IBOutlet private weak var historyTranslateLabel: UILabel!
    @IBOutlet private weak var historyWordLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        historyTranslateLabel.font = UIFont.systemFont(ofSize: 12)
        historyTranslateLabel.textColor = UIColor.darkGray
        selectionStyle = .none
    }

    func histotyUpdate(name: String, translate: String) {
        historyWordLabel.text = name
        historyTranslateLabel.text = translate
    }
}
