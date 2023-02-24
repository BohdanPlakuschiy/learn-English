//
//  WordListTableViewCell.swift
//  Learn English
//
//  Created by Богдан Плакущий on 16.02.2023.
//

import UIKit

class WordListTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var titleView: UIView!
    @IBOutlet private  weak var titleWordLabelTablecell : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        titleView.layer.cornerRadius = titleView.bounds.width / 2
        
    }

    func update(word: String) {
        titleWordLabelTablecell.text = word
    }
    

}
