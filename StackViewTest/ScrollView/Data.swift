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
    let title: String
    let content: String
    
    init(image: UIImage?, title: String, content: String) {
        self.image = image
        self.title = title
        self.content = content
    }
}
