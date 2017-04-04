//
//  ViewController.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31.03.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, RequestViewInput, MessageViewInput {
    
    // MARK: Properties
    
    var spinner: UIActivityIndicatorView?
    var requestInProgress = false
    var messageView: UIView?
    var messageLabel: UILabel?
    
    // MARK: UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initBackButton()
        initSpinner()
        initMessageView()
        setNeedsStatusBarAppearanceUpdate()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle { return .lightContent }
        
    // MARK: RequestViewInput
    
    func startRequest() {
        spinner?.startAnimating()
        requestInProgress = true
    }
    
    func endRequest() {
        spinner?.stopAnimating()
        requestInProgress = false
    }
    
    // MARK: MessageViewInput
    
    func showMessageView(withMessage message: String) {
        messageLabel?.text = message
        messageView?.isHidden = false
        messageLabel?.isHidden = false
        let duration = TimeInterval(1)
        let delay = TimeInterval(3)
        UIView.animate(withDuration: duration) {
            if let messageView = self.messageView {
                messageView.frame.origin.y = self.view.frame.height - messageView.frame.height
            }
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            UIView.animate(withDuration: duration) {
                self.messageView?.frame.origin.y = self.view.frame.height
            }
        }
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
        let backButton = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem = backButton
        let backImage = UIImage(named: "arrow")
        navigationController?.navigationBar.backIndicatorImage = backImage
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = backImage
    }
    
    private func initMessageView() {
        let height = CGFloat(68)
        messageView = UIView(frame: CGRect(x: 0, y: view.frame.height, width: view.frame.width, height: height))
        messageLabel = UILabel()
        messageLabel?.translatesAutoresizingMaskIntoConstraints = false
        if let messageView = messageView, let messageLabel = messageLabel {
            messageView.backgroundColor = Color.darkBlue
            view.addSubview(messageView)
            
            messageLabel.frame = messageView.bounds
            messageLabel.textAlignment = .center
            messageLabel.font = Font.bold13
            messageLabel.textColor = UIColor.white
            messageLabel.numberOfLines = 0
            messageLabel.lineBreakMode = .byWordWrapping
            messageView.addSubview(messageLabel)
            
            messageView.isHidden = true
            messageLabel.isHidden = true
            
            NSLayoutConstraint.activate([
                messageLabel.topAnchor.constraint(equalTo: messageView.topAnchor),
                messageLabel.bottomAnchor.constraint(equalTo: messageView.bottomAnchor),
                messageLabel.heightAnchor.constraint(equalTo: messageView.heightAnchor),
                messageLabel.leadingAnchor.constraint(equalTo: messageView.leadingAnchor),
                messageLabel.trailingAnchor.constraint(equalTo: messageView.trailingAnchor),
                messageLabel.widthAnchor.constraint(equalTo: messageView.widthAnchor)
            ])
        }
    }
}
