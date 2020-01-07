//
//  ViewController.swift
//  pesonasiak
//
//  Created by Jeffry  on 07/01/20.
//  Copyright © 2020 Jeffry . All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://www.pesonasiak.id/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}
