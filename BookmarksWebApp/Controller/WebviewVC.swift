//
//  WebviewVC.swift
//  BookmarksWebApp
//
//  Created by Stefan Markovic on 9/15/17.
//  Copyright © 2017 Stefan Markovic. All rights reserved.
//

import UIKit
import WebKit

class WebviewVC: UIViewController,WKNavigationDelegate {

    var bookmark: Bookmark!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var myWebView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        myWebView.navigationDelegate = self
        
        let url = URL(string: bookmark.link)
        myWebView.load(URLRequest(url: url!))

        activityIndicator.startAnimating()
        

    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
    
    
    

}
