//
//  ScrollViewController.swift
//  StackViewTest
//
//  Created by Yamada Shunya on 2019/04/25.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    // Stub
    private let article: [ArticleData] = [
        ArticleData(image: UIImage(named: "uchucon"),
                    title: """
                        "宇宙のように壮大でコンビニのように身近な音楽" 京都から全国へ、果ては宇宙まで
                    """,
                    content: """
                    2012年に結成された宇宙コンビニは、ポストロックをよりポップに消化し独自の世界観を産み出し、不可思議かつ親しみやすい楽曲で多くのリスナーを驚かせた。20代そこそこの若いバンドとは思えない卓越した演奏力を武器に、カナダでのライヴ・ツアーなど国内にとどまらない活動をおこなってきただけに突然の解散発表は戸惑わざるをえない。
                        メンバーを代表しリーダーのだいじろーからのコメントが発表されている。
                    年月が経つにつれ、“音楽に対する姿勢”や“目指すべきところ”のズレが大きくなってしまいました。バンド内の環境をしばらく見ていて、今後この三人で、納得出来るものは生まれないという結論を自分なりに出しました。
                        応援して下さった皆様、レーベルの方々には、言葉で言い尽くせない程のサポートを頂き何度も励みになりました。そのご恩は一生忘れません。
                        今後も音楽と真摯に向き合い、この広い世界で消えないような足跡を残し続けたいと思ってます。
                        短い間でしたが宇宙コンビニという誰かに愛される音楽をやれて良かったです。本当にありがとうございました！
                        Gt / だいじろー
                    """),
        ArticleData(image: UIImage(named: "uchucon2"),
                    title: "宇宙コンビニ",
                    content: "超絶技巧ともいえるテクニカルな演奏と透き通ったウィスパーボイスを持ち味とする宇宙コンビニ。昨年10月にリリースした1stミニアルバム『染まる音を確認したら』はイギリスのプロモーションサイト“Fecking Bahamas”で取り上げられ、今年5月には、カナダのジャパニーズミュージックブームを牽引しているライブツアー“Next Music from TOKYO vol.6”に参加するなど、日本だけでなく海外からも高い評価を得ている。そんな中、8月6日には2ndミニアルバム『月の反射でみてた』をリリース。"),
        ArticleData(image: UIImage(named: "nil"), title: "", content: "Content")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    @IBAction func tapReload(_ sender: Any) {
        let data = article[Int.random(in: 0..<article.count)]
        print("Article: \(data)")
        
        imageView.image = data.image
        imageView.superview?.isHidden = data.image == nil
        titleLabel.text = data.title
        titleLabel.superview?.isHidden = data.title.isEmpty
        textView.text = data.content
        textView.superview?.isHidden = data.content.isEmpty
    }
}

extension ScrollViewController {
    
    func setupUI() {
        // Navigation
        navigationItem.title = "ScrollView"
        
        // UI
        let data = article[Int.random(in: 0..<article.count)]
        
        imageView.image = data.image
        imageView.superview?.isHidden = data.image == nil
        titleLabel.text = data.title
        titleLabel.superview?.isHidden = data.title.isEmpty
        textView.text = data.content
        textView.superview?.isHidden = data.content.isEmpty
    }
}
