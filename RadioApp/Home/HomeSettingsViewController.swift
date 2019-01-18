//
//  HomeSettingsViewController.swift
//  RadioApp
//
//  Created by Artem Karmaz on 1/18/19.
//  Copyright © 2019 Johansson Group. All rights reserved.
//

import UIKit

class HomeSettingsViewController: UITableViewController {
    
    var myModel: MyModel?
    
    @IBOutlet weak var firstSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if myModel?.firstSwitchOnHSVC == true {
            firstSwitch.isOn = true
        }

        //        print(myModel?.mydata)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToHomeViewController(_ sender: UIBarButtonItem) {
        
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let homeViewController = storyboard.instantiateViewController(withIdentifier: "homevc") as! HomeViewController
        homeViewController.myModel = myModel!
        
        //                let navigationController = UINavigationController(rootViewController: homeViewController)
        //                self.present(navigationController, animated: true, completion: nil)
        
        dismiss(animated: true, completion: nil)
        //        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        //        let homeViewController = storyboard.instantiateViewController(withIdentifier: "homevc") as! HomeViewController
        //        let navigationController = UINavigationController(rootViewController: homeViewController)
        //        self.present(navigationController, animated: true, completion: nil)
        //        homeViewController.myModel = myModel!
        //        myModel?.mydata = "Ne ya pidor"
        
        //        print(myModel?.mydata)
        
    }
    
    @IBAction func fitstSwitchSettings(_ sender: UISwitch) {
        if firstSwitch.isOn {
            myModel?.firstSwitchOnHSVC = true
        } else {
            myModel?.firstSwitchOnHSVC = false
        }
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
