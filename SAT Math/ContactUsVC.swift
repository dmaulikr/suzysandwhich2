//
//  ContactUsVC.swift
//  SAT Math
//
//  Created by Adam Buys on 7/12/17.
//  Copyright © 2017 Adam Buys. All rights reserved.
//

import UIKit

class ContactUsVC: UIViewController {

    
    @IBOutlet weak var webview: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        setUpNavBar()
        
        let url = NSURL(string: "https://www.huntington.com/customer-service/contact-us")
        let requestObj = URLRequest(url: url! as URL)
        webview.loadRequest(requestObj)
        
        
    }
    
    func setUpNavBar() -> Void {
        
        
        let backButton = UIBarButtonItem(title: "Menu", style: .plain, target: nil, action: nil)
        navigationItem.leftBarButtonItem = backButton
        
        
        if self.revealViewController() != nil {
            backButton.target = self.revealViewController()
            backButton.action = Selector(("revealToggle:"))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        
        
    }

}
