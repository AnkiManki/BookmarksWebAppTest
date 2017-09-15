//
//  WebviewVC.swift
//  BookmarksWebApp
//
//  Created by Stefan Markovic on 9/15/17.
//  Copyright © 2017 Stefan Markovic. All rights reserved.
//

import UIKit
import WebKit

class WebviewVC: UIViewController {

    var bookmark: Bookmark!
    
    @IBOutlet weak var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: bookmark.link)
        myWebView.load(URLRequest(url: url!))

    }


}
