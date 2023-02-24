//
//  HistoryViewController.swift
//  Learn English
//
//  Created by Богдан Плакущий on 17.02.2023.
//

import UIKit

class HistoryViewController: UIViewController {
    
    @IBOutlet weak var historyTableVC: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "History"
        
        historyTableVC.delegate = self
        historyTableVC.dataSource = self
    }
    
}

extension HistoryViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.instance.historyWords.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryTableViewCell", for: indexPath) as! HistoryTableViewCell
        let histoty = DataManager.instance.historyWords[indexPath.row]
        cell.histotyUpdate(name: histoty.word, translate: histoty.translation)
        return cell
    }
    
    
}
