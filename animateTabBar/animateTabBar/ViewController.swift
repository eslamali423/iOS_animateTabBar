//
//  ViewController.swift
//  animateTabBar
//
//  Created by Eslam Ali  on 26/11/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // this for set tabBar.isHidden  =  false
        // show navBar anyways
        Manager.shared.animateTabBar(navBar: self.navigationController, show: true)
    }
    
    
    
    @IBAction func didTapButton(_ sender: Any) {
        
        
        let vc =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController")
        
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

