//
//  ScrollViewController.swift
//  StackViewTest
//
//  Created by Yamada Shunya on 2019/04/25.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}

extension ScrollViewController {
    
    func setupUI() {
        // Navigation
        navigationItem.title = "ScrollView"
        
        // UI
        textView.text = """
        2012年に結成された宇宙コンビニは、ポストロックをよりポップに消化し独自の世界観を産み出し、不可思議かつ親しみやすい楽曲で多くのリスナーを驚かせた。20代そこそこの若いバンドとは思えない卓越した演奏力を武器に、カナダでのライヴ・ツアーなど国内にとどまらない活動をおこなってきただけに突然の解散発表は戸惑わざるをえない。
        
        メンバーを代表しリーダーのだいじろーからのコメントが発表されている。
        
        年月が経つにつれ、“音楽に対する姿勢”や“目指すべきところ”のズレが大きくなってしまいました。バンド内の環境をしばらく見ていて、今後この三人で、納得出来るものは生まれないという結論を自分なりに出しました。
        応援して下さった皆様、レーベルの方々には、言葉で言い尽くせない程のサポートを頂き何度も励みになりました。そのご恩は一生忘れません。
        今後も音楽と真摯に向き合い、この広い世界で消えないような足跡を残し続けたいと思ってます。
        短い間でしたが宇宙コンビニという誰かに愛される音楽をやれて良かったです。本当にありがとうございました！
        Gt / だいじろー
        """
    }
}
