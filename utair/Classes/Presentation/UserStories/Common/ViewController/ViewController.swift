//
//  ViewController.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31.03.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    
    var spinner: UIActivityIndicatorView?
    
    var requestInProgress = false
    
    var messageView: UIView?
    var messageLabel: UILabel?
    
    // MARK: UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        automaticallyAdjustsScrollViewInsets = false
        initBackButton()
        initSpinner()
    }
        
    // MARK: ViperRequestViewInput
    
    func startRequest() {
        spinner?.startAnimating()
        requestInProgress = true
    }
    
    func endRequest() {
        spinner?.stopAnimating()
        requestInProgress = false
    }
    
    // MARK: Private helpers
    
    private func initSpinner() {
        spinner = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
        spinner?.color = UIColor.white
        spinner?.hidesWhenStopped = true
        spinner?.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(spinner!)
        NSLayoutConstraint(item: spinner!, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: spinner!, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0).isActive = true
    }
    
    private func initBackButton() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
}
