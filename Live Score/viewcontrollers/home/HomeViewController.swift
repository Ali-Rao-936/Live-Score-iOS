//
//  HomeViewController.swift
//  Live Score
//
//  Created by Qoo on 24/01/2023.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var main_cont: UIView!
    
    @IBOutlet weak var main_table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
        setRoundToMainCont()
        // Do any additional setup after loading the view.
    }
    
    @objc func setRoundToMainCont(){
        
        main_cont.roundCorners(corners: [.topLeft,.topRight],radius: 30)
        
    }
    
    func setupNavBar(){
        let left_btn = getButton(image: UIImage(named: "match_time")!)
        left_btn.addTarget(self, action: #selector(matchTime), for: .touchUpInside)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: left_btn)
        
        let right_btn = getButton(image: UIImage(named: "Search")!)
        right_btn.addTarget(self, action: #selector(search), for: .touchUpInside)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: right_btn)
        
        //change the title color
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : Colors.mainTitleColor()]
    }
    
    
    @objc func matchTime(){
        print("match list code")
//        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
//        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @objc func search(){
        print("Search code")
        
    }

}
