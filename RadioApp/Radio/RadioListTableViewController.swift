//
//  RadioListTableViewController.swift
//  RadioApp
//
//  Created by Artem Karmaz on 1/19/19.
//  Copyright © 2019 Johansson Group. All rights reserved.
//

import UIKit

class RadioListTableViewController: UITableViewController {
    
    let radio = Radio()
    let cellReuseIdentifier = "cell"
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    @IBOutlet weak var ukraineRadioList: UITableViewCell!
    
    @IBOutlet weak var radioInformatorCell: UITableViewCell!
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("selected cell \(indexPath.row)")
    }
    
//    func goToRadioPlayer(_ sender: UITableViewCell) {
//
//        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let radioViewController = storyboard.instantiateViewController(withIdentifier: "radioVC") as! HomeSettingsViewController
////        homeSettingsViewController.myModel = myModel
////        let navigationController = UINavigationController(rootViewController: homeSettingsViewController)
//        self.present(radioViewController, animated: true, completion: nil)
////
//    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let radioList = [ukraineRadioList]
//        
//        switch radioList {
//        case [0]:
//            let segueDestination = segue.destination as! RadioViewController
//        default:
//            ()
//        }

    
    
    override func numberOfSections(in tableView: UI
        TableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
//
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return radio.ukraineRadio.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier)!
        cell.textLabel!.text = self.radio.ukraineRadio[indexPath.row]
        
        return cell
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
