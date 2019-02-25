//
//  ViewController.swift
//  Real Madrid app projekt
//
//  Created by Eddie Agegnehu Kyrk on 2018-08-30.
//  Copyright © 2018 Eddie Agegnehu Kyrk. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var cheeringFans: AVAudioPlayer = AVAudioPlayer ()
    
    @IBOutlet weak var backgroundPic: UIImageView!
    @IBOutlet weak var infoText: UITextView!
    
    override func  viewDidLoad() {
        super.viewDidLoad()
        
        
        let musicFile = Bundle.main.path(forResource: "real ljudklipp", ofType: ".m4a")
        
        do {
            try cheeringFans = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile!))
        }
        catch {
            print(error)
        }
        playCheering()
    }
    
   // lagt till alphavärdet som 0.0 till en början och sedan animerat så att bilden och textviewn fadeas in till värdet 1.0
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.backgroundPic.alpha = 0.0
        self.infoText.alpha = 0.0
        
        

        
        UIView.animate(withDuration: 3.0, animations: {
            self.backgroundPic.alpha = 1.0
        })
        UIView.animate(withDuration: 5.0, animations: {
            self.infoText.alpha = 1.0
        })

    }
    
    /**
     Funktion för att sätta på ljudet av fans som skriker när appen startas på detta fönster.
 
    */
    func playCheering (){
        
        cheeringFans.play()
    }
    
    
    
    
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

