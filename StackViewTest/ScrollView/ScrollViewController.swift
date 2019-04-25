//
//  ScrollViewController.swift
//  StackViewTest
//
//  Created by Yamada Shunya on 2019/04/25.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var scrollContentView: UIView!
    
    @IBOutlet weak var adView: UIView!
    
    @IBOutlet weak var mainImageView: UIImageView!
    
    @IBOutlet weak var largeAdView: UIView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var textCollupseView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUi()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
//        scrollView.contentInset.bottom = view.safeAreaInsets.bottom
//        scrollView.scrollIndicatorInsets = view.safeAreaInsets
    }
    
    @IBAction func tapShowButton(_ sender: UIButton) {
        textCollupseView.isHidden.toggle()
        sender.setTitle(textCollupseView.isHidden ? "Hide text" : "Show detail", for: .normal)
    }
}

extension ScrollViewController {
    
    func setupUi() {
        // ScrollView
        //scrollView.contentInsetAdjustmentBehavior = .never
        
        adView.isHidden = Bool.random()
        largeAdView.isHidden = Bool.random()
        
        titleLabel.text = """
        「宇宙コンビニ」はマスロックに革命を起こしうるバンドだった【プログレッシブポップ】
        プログレッシブポップバンド
        """
    }
}
