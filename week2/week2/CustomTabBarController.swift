//
//  CustomTabBarController.swift
//  week2
//
//  Created by 김윤서 on 2021/10/09.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setTabBar()
    }
    
    func setTabBar() {
        let tabBarStoryboard = UIStoryboard(name: "Tabbar", bundle: nil)
        guard let orangeVC = tabBarStoryboard.instantiateViewController(identifier: "OrangeViewController") as? OrangeViewController else {return}
        guard let purpleVC = tabBarStoryboard.instantiateViewController(identifier: "PurpleViewController") as? PurpleViewController else {return}
        
        orangeVC.tabBarItem.title = "Home"
        orangeVC.tabBarItem.image = UIImage(systemName: "house")
        orangeVC.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        
        purpleVC.tabBarItem.title = "Profile"
        purpleVC.tabBarItem.image = UIImage(systemName: "person")
        purpleVC.tabBarItem.selectedImage = UIImage(systemName: "person.fill")
        
        setViewControllers([orangeVC, purpleVC], animated: true)
        
    }
}
