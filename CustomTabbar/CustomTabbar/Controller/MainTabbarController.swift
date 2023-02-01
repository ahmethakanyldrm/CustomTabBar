//
//  MainTabbarController.swift
//  CustomTabbar
//
//  Created by AHMET HAKAN YILDIRIM on 1.02.2023.
//

import UIKit

class MainTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
       generateTabbar()
        setTabbarAppearance()
    }
    
    private func generateTabbar(){
        viewControllers = [
        generateVC(
            viewController: HomeViewController(),
            title: "Home",
            image: UIImage(systemName: "house.fill")),
        
        generateVC(
            viewController: PersonViewController(),
            title: "Personal Info",
            image: UIImage(systemName: "person.fill")),
        
        generateVC(viewController: SettingsViewController(),
                   title: "Settings",
                   image: UIImage(systemName: "slider.horizontal.3"))
        ]
    }
    
    private func generateVC(viewController:UIViewController, title:String,image: UIImage?)-> UIViewController{
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
    
    private func setTabbarAppearance() {
        let positionX: CGFloat = 10
        let positionY: CGFloat = 14
        let width = tabBar.bounds.width - positionX * 2
        let height = tabBar.bounds.height + positionY * 2
        let roundLayer = CAShapeLayer()
        let bezierPath = UIBezierPath(
            roundedRect: CGRect(
                x: positionX,
                y: tabBar.bounds.minY - positionY,
                width: width,
                height: height),
            cornerRadius: height / 2)
        
        roundLayer.path = bezierPath.cgPath
        
        tabBar.layer.insertSublayer(roundLayer, at: 0)
        tabBar.itemWidth = width / 5
        tabBar.itemPositioning = .centered
        
        roundLayer.fillColor = UIColor.mainWhite.cgColor
        
        tabBar.tintColor = .tabBarItemAccent
        tabBar.unselectedItemTintColor = .tabBarItemLight
        
    }


}

