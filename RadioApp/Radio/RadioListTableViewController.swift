//
//  RadioListTableViewController.swift
//  RadioApp
//
//  Created by Artem Karmaz on 1/19/19.
//  Copyright © 2019 Johansson Group. All rights reserved.
//

import UIKit

class RadioListTableViewController: UITableViewController {
    
    let radio = RadioModel()
    let radioMinorSettings = RadioMinorSettings()
    
    let cellReuseIdentifier = "cell"
    
    func teleportToRadioPlayer() {
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let radioPlayerViewController = storyboard.instantiateViewController(withIdentifier: "radioPlayerViewController") as! RadioPlayerViewController
        radioPlayerViewController.radioMinorSettings = radioMinorSettings
        let radioPlayerNavController = UINavigationController(rootViewController: radioPlayerViewController)
        present(radioPlayerNavController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.reloadData()
        self.radioList.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
    }
    
    // MARK: - Table view data source
    
    
    
    @IBOutlet var radioList: UITableView!
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return radio.ukraineRadio.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath)
        
        cell.textLabel?.text = self.radio.ukraineRadio[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        radioMinorSettings.numberOfRadioStation = indexPath.row
        teleportToRadioPlayer()
        print("You tapped cell number \(indexPath.row).")
    }
    
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Radio list"
//    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let vw = UIView()
        vw.backgroundColor = UIColor.white
        return vw
    }
}
