//
//  history.swift
//  lifecounter2
//
//  Created by Phoebe Hu on 2/3/19.
//  Copyright © 2019 Phoebe Hu. All rights reserved.
//

import UIKit

class History: UIViewController,  UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var historyTableView: UITableView!
    let cellReuseIdentifier = "historyCell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.historyTableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        historyTableView.delegate = self
        historyTableView.dataSource = self
    }
    
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return history.count }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.historyTableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell!
        cell.textLabel?.text = "\(history[history.count - indexPath.row - 1])"
        
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        historyTableView.reloadData()
    }

    
}
    

