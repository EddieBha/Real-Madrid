//
//  PhotosViewController.swift
//  Real Madrid app projekt
//
//  Created by Eddie Agegnehu Kyrk on 2018-09-05.
//  Copyright © 2018 Eddie Agegnehu Kyrk. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
   
    @IBOutlet weak var previousBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var mainScrollView: UIScrollView!
    
 
    var currentImageIndex: Int = 0
    
    /**
     skapar en array som innehåller alla bilder
    */
    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // gör så att scrollviewn matchar den vanliga viewn
        mainScrollView.frame = view.frame
       
        imageArray = [#imageLiteral(resourceName: "536462064-612x612"), #imageLiteral(resourceName: "180502_realmadrid2-750x402"), #imageLiteral(resourceName: "gareth-bale-karim-benzema-real-madrid_1ng815kmtn3q61j1ht8o7ltzah"), #imageLiteral(resourceName: "images"), #imageLiteral(resourceName: "ladda ned"), #imageLiteral(resourceName: "real")]
       
         /**
         en for loop som loopar genom alla bilder i arrayen, även gjort kod som gör så att man kan scrolla genom bilderna
 
         */
        
        for i in 0..<imageArray.count{
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0 , width: self.mainScrollView.frame.width, height: self.mainScrollView.frame.height)
            
            mainScrollView.contentSize.width = mainScrollView.frame.width * CGFloat(i + 1)
            mainScrollView.addSubview(imageView)
            
        }
        
    }
 
    /**
    Funktion för att kunna klicka sig till nästa bild genom en "next knapp".
    */
    @IBAction func nextPic(_ sender: Any) {
        let w = mainScrollView.bounds.width
        if currentImageIndex < imageArray.count - 1 {
            currentImageIndex += 1
            mainScrollView.setContentOffset(CGPoint(x: CGFloat(currentImageIndex) * w, y: 0), animated: true)
        }
    
        if currentImageIndex == 5 {
            nextBtn.isEnabled = false
            nextBtn.backgroundColor = UIColor.gray
        }
        else{
            nextBtn.backgroundColor = UIColor.blue
            previousBtn.isEnabled = true
            previousBtn.backgroundColor = UIColor.blue
            
           
        }
        
        
    }
    
    /**
      Funktion för att kunna klicka sig till föregående bild genom en "previous knapp"
 
  */
    
    @IBAction func previousPic(_ sender: Any) {
        let w = mainScrollView.bounds.width
        if currentImageIndex > 0 {
            currentImageIndex -= 1
            mainScrollView.setContentOffset(CGPoint(x: CGFloat(currentImageIndex) * w, y: 0), animated: true)
        }
        if currentImageIndex == 0 {
            
        previousBtn.isEnabled = false
        previousBtn.backgroundColor = UIColor.gray

        }else {
            previousBtn.backgroundColor = UIColor.blue
            nextBtn.isEnabled = true
            nextBtn.backgroundColor = UIColor.blue
            
            
        
            
        }
        
            
            
            
        
      
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
