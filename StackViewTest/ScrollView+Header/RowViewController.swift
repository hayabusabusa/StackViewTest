//
//  RowViewController.swift
//  StackViewTest
//
//  Created by 山田隼也 on 2019/05/12.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//
//  Inspiration
//  https://www.behance.net/gallery/78945431/UIUX-for-Fitness-IOS-app-Client-Relationship-Manager?tracking_source=search%257Capp
//  

import UIKit

class RowViewController: UIViewController {
    
    @IBOutlet weak var layoutColorPalette: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    @IBAction func tapPalette(_ sender: UIButton) {
        guard let selectColor = sender.backgroundColor,
            let currentColor = layoutColorPalette.backgroundColor else {
            return
        }
        layoutColorPalette.backgroundColor = currentColor == selectColor ? .white : selectColor
    }
}

extension RowViewController {
    
    func setupUI() {
        // Navigation
        navigationItem.title = "Row"
    }
}