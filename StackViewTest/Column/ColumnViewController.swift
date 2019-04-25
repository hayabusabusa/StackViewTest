//
//  ColumnViewController.swift
//  StackViewTest
//
//  Created by Yamada Shunya on 2019/04/25.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import UIKit

final class ColumnViewController: UIViewController {
    
    @IBOutlet weak var textViewCollupsedView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapShow(_ sender: UIButton) {
        textViewCollupsedView.isHidden.toggle()
        sender.setTitle(textViewCollupsedView.isHidden ? "Dismiss" : "Show", for: .normal)
    }
}
