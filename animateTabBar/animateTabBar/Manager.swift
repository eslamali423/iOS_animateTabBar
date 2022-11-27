//
//  Manager.swift
//  animateTabBar
//
//  Created by Eslam Ali  on 27/11/2022.
//

import Foundation
import UIKit

class Manager {
    static let shared = Helper()
    //MARK: - TabBar
    func animateTabBar(navBar:  UINavigationController?, show: Bool = false) {
        guard let navigationController = navBar else { return }
         guard let tabBarIsHidden = navBar!.tabBarController?.tabBar.isHidden else { return }
            
        if show {
            guard tabBarIsHidden else {
                return
            }
            navBar!.tabBarController?.tabBar.isHidden = false
            UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.7, options: .curveEaseOut) {
                if let tabBarFrame = navBar!.tabBarController?.tabBar.frame {
                    navBar!.tabBarController?.tabBar.frame.origin.y = navigationController.view.frame.maxY - tabBarFrame.height
                }
                navigationController.view.layoutIfNeeded()
            }
        } else {
            UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.7, options: .curveEaseOut) {
                if let tabBarFrame = navBar!.tabBarController?.tabBar.frame {
                    navBar!.tabBarController?.tabBar.frame.origin.y = navBar!.view.frame.maxY + tabBarFrame.height
                }
                navBar!.view.layoutIfNeeded()
            } completion: { _ in
                navBar!.tabBarController?.tabBar.isHidden = true
            }
        }
    }
    
   
}
