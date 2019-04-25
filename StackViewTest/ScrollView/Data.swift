//
//  Data.swift
//  StackViewTest
//
//  Created by Yamada Shunya on 2019/04/25.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import UIKit

struct ArticleData {
    
    let image: UIImage?
    let title: String?
    let content: String?
    
    var showAd: Bool = true
    var showLargeAd: Bool = true
    
    init(image: UIImage, title: String, content: String, showAd: Bool, showLargeAd: Bool) {
        self.image = image
        self.title = title
        self.content = content
        self.showAd = showAd
        self.showLargeAd = showLargeAd
    }
}
