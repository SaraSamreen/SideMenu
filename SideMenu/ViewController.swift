//
//  ViewController.swift
//  SideMenu
//
//  Created by Mac on 18/05/2026.
//

import UIKit
class ViewController: UIViewController {
    
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var menuView: UIView!
    
    var menuShowing = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuView.layer.shadowOpacity = 1
        menuView.layer.shadowRadius = 6
    }
    
    @IBAction func openMenu(_ sender: Any) {
        
        leadingConstraint.constant = menuShowing ? -140 : 0
        
        UIView.animate(withDuration: 0.3, animations: {
            self.view.layoutIfNeeded()
        }, completion: { _ in
            (sender as? UIButton)?.isUserInteractionEnabled = true
        })
        
        menuShowing = !menuShowing
    }
}
        
