//
//  WebViewController.swift
//  Real Madrid app projekt
//
//  Created by Eddie Agegnehu Kyrk on 2018-09-05.
//  Copyright © 2018 Eddie Agegnehu Kyrk. All rights reserved.
//

import UIKit
import WebKit

class SquadWebViewController: UIViewController {
    
    @IBOutlet weak var sqWebView: WKWebView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
          /**
         implementerar en url request för att få fram lagtruppen i webviewn
         
           */
        if let webUrl = URL(string:"https://www.realmadrid.com/en/football/squad") {
            
            let req = URLRequest(url: webUrl)
            
            sqWebView.load(req)
            
            
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
