//
//  HomeViewController.swift
//  RadioApp
//
//  Created by Artem Karmaz on 1/18/19.
//  Copyright © 2019 Johansson Group. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var myModel = MyModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func goToHomeSettingsViewController(_ sender: UIBarButtonItem) {

        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let homeSettingsViewController = storyboard.instantiateViewController(withIdentifier: "settingshomevc") as! HomeSettingsViewController
        homeSettingsViewController.myModel = myModel
        let navigationController = UINavigationController(rootViewController: homeSettingsViewController)
        self.present(navigationController, animated: true, completion: nil)
        
        print(myModel.mydata)
    }
    
     @IBAction func goToHomeCreativeContoller(_ sender: UIBarButtonItem) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let creativeSViewController = storyboard.instantiateViewController(withIdentifier: "homeCreativeVC") as! HomeCreativeViewController
        let navigationController = UINavigationController(rootViewController: creativeSViewController)
        self.present(navigationController, animated: true, completion: nil)
     }
     // MARK: - Navigation
     
//     // In a storyboard-based application, you will often want to do a little preparation before navigation
//     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//     // Get the new view controller using segue.destination.
//     // Pass the selected object to the new view controller.
//     }

    
}
