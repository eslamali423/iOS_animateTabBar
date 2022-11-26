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

    
    
    
    @IBAction func didTapButton(_ sender: Any) {
        
        
        let vc =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController")
        
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

