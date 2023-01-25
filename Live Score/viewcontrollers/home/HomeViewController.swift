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
        initialSettings()
        // Do any additional setup after loading the view.
    }
    
    func initialSettings(){
        main_table.dataSource = self
        main_table.delegate = self
        
        main_table.register(UINib(nibName: "MatchTodayTableViewCell", bundle: nil), forCellReuseIdentifier: "MT")
        main_table.register(UINib(nibName: "FeaturedNewsTableViewCell", bundle: nil), forCellReuseIdentifier: "FN")
        main_table.register(UINib(nibName: "LiveMatchesTableViewCell", bundle: nil), forCellReuseIdentifier: "LV")
//        viewModel.delegate = self
//        viewModel.getPlayers()
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







extension HomeViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let MT = tableView.dequeueReusableCell(withIdentifier: "MT") as! MatchTodayTableViewCell

            return MT
        }
        
        else{
            if indexPath.row == 1 {
                let FN = tableView.dequeueReusableCell(withIdentifier: "FN") as! FeaturedNewsTableViewCell
                return FN
            }else{
                let MT = tableView.dequeueReusableCell(withIdentifier: "LV") as! LiveMatchesTableViewCell
                return MT
            }
            
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 0 {
            return 450
        }
        
        else{
            if indexPath.row == 1 {
                return 550
            }else{
                return 750
            }
            
        }
        
    }
   
    
    
}
