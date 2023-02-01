//
//  HomeViewController.swift
//  CustomTabbar
//
//  Created by AHMET HAKAN YILDIRIM on 1.02.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    private var label: UILabel = {
       let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 200, height: 21)
        label.text = "Home Page"
        label.font.withSize(24)
        label.center = CGPoint(x: 200, y: 450)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        view.addSubview(label)
    }

}
