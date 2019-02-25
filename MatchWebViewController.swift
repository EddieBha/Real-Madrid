//
//  MatchWebViewController.swift
//  Real Madrid app projekt
//
//  Created by Eddie Agegnehu Kyrk on 2018-09-06.
//  Copyright © 2018 Eddie Agegnehu Kyrk. All rights reserved.
//

import UIKit
import WebKit

class MatchWebViewController: UIViewController {

    @IBOutlet weak var matchWebView: WKWebView!
    
    // implementerade en url request för att få fram lagtruppen i webviewn
    override func viewDidLoad() {
        super.viewDidLoad()
        if let webUrl = URL(string:"https://www.realmadrid.com/en/football/schedule") {
            let req = URLRequest(url: webUrl)
            
            matchWebView.load(req)
            
            
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
