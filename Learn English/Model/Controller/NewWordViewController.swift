//
//  NewWordViewController.swift
//  Learn English
//
//  Created by Богдан Плакущий on 16.02.2023.
//

import UIKit

class NewWordViewController: UIViewController {
    
    @IBOutlet private weak var wordTextField: UITextField!
    @IBOutlet private weak var translationTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressedButtonSaveWord(_ sender: Any) {
        guard let word = wordTextField.text, !word.isEmpty else { return }
        guard let translation = translationTextField.text, !translation.isEmpty else { return }
        let wishOne = Word(word: word, translation: translation)
        DataManager.instance.addWords(wishOne)
        navigationController?.popViewController(animated: true)
    }
    
    
}
