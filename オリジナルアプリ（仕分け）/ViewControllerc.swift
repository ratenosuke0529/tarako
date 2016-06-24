//
//  ViewController　４.swift
//  オリジナルアプリ（仕分け）
//
//  Created by 小泉心之介 on 2015/08/13.
//  Copyright (c) 2015年 小泉心之介. All rights reserved.
//

import UIKit

class ViewControllerc: UIViewController {
    
    @IBOutlet var image1: UIImageView!
    @IBOutlet var image2: UIImageView!
    @IBOutlet var moveimage: UIImageView!
    var isMoveOn: Bool = false
    var hantei: Int = 0
    @IBOutlet var label: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?)
    {
        let touch: UITouch = touches.first as! UITouch!
        let location: CGPoint = touch.locationInView(self.view)
        if location.y >= moveimage.center.y-64 && location.y <= moveimage.center.y+64 && location.x >= moveimage.center.x-64 && location.x <= moveimage.center.x+64 {
            
        }
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        let touch: UITouch = touches.first as! UITouch!
        let location: CGPoint = touch.locationInView(self.view)
        
        moveimage.center = location
        
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        let touch: UITouch = touches.first as! UITouch!
        let location: CGPoint = touch.locationInView(self.view)
        
        moveimage.center = location
        
        if CGRectContainsPoint(image1.frame, moveimage.center) {
            
            label.text = "せいかい"
            
        }else if CGRectContainsPoint(image2.frame, moveimage.center) {
            
            label.text = "ふせいかい"
            
        }
        
      
            
        
        
    }
    
        

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
