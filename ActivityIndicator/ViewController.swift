//
//  ViewController.swift
//  ActivityIndicator
//
//  Created by Rudolf Farkas on 15.04.18.
//  Copyright © 2018 Rudolf Farkas. All rights reserved.
//

import UIKit
import SVProgressHUD

class ViewController: UIViewController {
    
    var activityIndicator = UIActivityIndicatorView()
    
    @IBAction func startIndicator(_ sender: Any) {
        
        activityIndicator.center = CGPoint(x: self.view.center.x, y: self.view.center.y / CGFloat(2))
        activityIndicator.hidesWhenStopped = true
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        view.addSubview(activityIndicator)
        activityIndicator.startAnimating()
        
        SVProgressHUD.show(withStatus: "SVProgressHUD..")
    }
    
    @IBAction func stopIndicator(_ sender: Any) {
        activityIndicator.stopAnimating()
        
        SVProgressHUD.dismiss()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

