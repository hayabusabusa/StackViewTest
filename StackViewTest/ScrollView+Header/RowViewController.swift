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
    @IBOutlet weak var menuStackView: UIStackView!
    @IBOutlet weak var menuLabel: UILabel!
    
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
        
        // StackView
        let views = menuStackView.arrangedSubviews
        for (i, item) in views.enumerated() {
            item.isUserInteractionEnabled = true
            item.tag = i
            item.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapMenuButton(_:))))
        }
    }
    
    @objc func tapMenuButton(_ sender: UITapGestureRecognizer) {
        let tag = sender.view?.tag ?? -1
        switch tag {
        case 0:
            menuLabel.text = "User button"
        case 1:
            menuLabel.text = "Information button"
        case 2:
            menuLabel.text = "Setting button"
        default:
            break
        }
    }
}
