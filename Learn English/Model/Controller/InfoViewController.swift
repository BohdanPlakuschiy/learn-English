//
//  InfoViewController.swift
//  Learn English
//
//  Created by Богдан Плакущий on 16.02.2023.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var translationLabel: UILabel!
    
    var twoWord: Word?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wordLabel.text = twoWord?.word
        translationLabel.text = twoWord?.translation
        
        // Do any additional setup after loading the view.
    }
    
    func updateWods(word: String, translate: String) {
        wordLabel.text = word
        translationLabel.text = translate
    }

    @IBAction func pressedDeleteWord(_ sender: Any) {
        guard let word = twoWord else { return }
        DataManager.instance.markAsDelete(word)
        navigationController?.popViewController(animated: true)
    }
    
}
