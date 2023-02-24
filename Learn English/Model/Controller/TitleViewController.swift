//
//  TitleViewController.swift
//  Learn English
//
//  Created by Богдан Плакущий on 16.02.2023.
//

import UIKit

class TitleViewController: UIViewController {

    @IBOutlet weak var titleTableViewcell: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Word list"
        
        titleTableViewcell.dataSource = self
        titleTableViewcell.delegate = self

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        titleTableViewcell.reloadData()
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showInfoVC" else { return }
        guard let destVC = segue.destination as? InfoViewController else { return }
        guard let cell = sender as? UITableViewCell,
              let indexPath = titleTableViewcell.indexPath(for: cell) else { return }
        let word = DataManager.instance.newWords[indexPath.row]
        destVC.twoWord = word
    }


}

extension TitleViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.instance.newWords.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = titleTableViewcell.dequeueReusableCell(withIdentifier: "InfoViewController", for: indexPath) as! WordListTableViewCell
        let word = DataManager.instance.newWords[indexPath.row]
        cell.update(word: word.word)
       return cell
    }

}

