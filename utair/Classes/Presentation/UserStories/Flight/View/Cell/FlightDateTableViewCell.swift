//
//  FlightDateTableViewCell.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31.03.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

class FlightDateTableViewCell: UITableViewCell {
    
    // MARK: IBOutlets
    
    @IBOutlet weak var thereLabel: TransparentBlueLabel!
    @IBOutlet weak var thereTextField: DateTextField!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var backLabel: TransparentBlueLabel!
    @IBOutlet weak var backTextField: DateTextField!
    @IBOutlet weak var clearButton: UIButton!
    
    // MARK: IBActions
    
    @IBAction func backButtonAction(_ sender: Any) { backTextField.becomeFirstResponder() }
    
    @IBAction func clearButtonAction(_ sender: Any) {
        backButton.isHidden = false
        backTextField.isHidden = true
        backLabel.isHidden = true
        clearButton.isHidden = true
    }
    
    // MARK: Constants
    
    let toolbar = UIToolbar()
    let dateFormatter = DateFormatter()
    let datePickerView = UIDatePicker()
    
    // MARK: Properties
    
    var keyboardShowBlock: KeyboardHeightBlock?
    var keyboardHideBlock: EmptyBlock?
    var thereDateBlock: IntBlock?
    var backDateBlock: IntBlock?
    
    // MARK: Initialization and deinitialization
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    // MARK: UIKit

    override func awakeFromNib() {
        super.awakeFromNib()
        setupStyle()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: .UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidHide(notification:)), name: .UIKeyboardDidHide, object: nil)
    }
    
    // MARK: Internal helpers
    
    func tapOnDoneButton() {
        if thereTextField.isEditing {
            thereTextField.text = dateFormatter.string(from: datePickerView.date)
            thereDateBlock?(Int(datePickerView.date.timeIntervalSince1970))
        } else if backTextField.isEditing {
            if backTextField.isHidden && backLabel.isHidden && clearButton.isHidden {
                backTextField.isHidden = false
                backLabel.isHidden = false
                clearButton.isHidden = false
                backButton.isHidden = true
            }
            backTextField.text = dateFormatter.string(from: datePickerView.date)
            if thereTextField.text == dateFormatter.string(from: Date()) {
                thereDateBlock?(Int(Date().timeIntervalSince1970))
            }
            backDateBlock?(Int(datePickerView.date.timeIntervalSince1970))
        }
        endEditing(true)
    }
    
    func tapOnCancelButton() {
        endEditing(true)
    }
    
    func keyboardWillShow(notification: Notification) {
        if let userInfo = notification.userInfo {
            if let keyboardFrame = userInfo[UIKeyboardFrameEndUserInfoKey] as? NSValue {
                let keyboardRectangle = keyboardFrame.cgRectValue
                let keyboardHeight = keyboardRectangle.height
                keyboardShowBlock?(keyboardHeight)
            }
        }
    }
    
    func keyboardDidHide(notification: Notification) {
        keyboardHideBlock?()
    }
    
    // MARK: Private helpers
    
    private func setupStyle() {
        backgroundColor = Color.blue
        thereLabel.text = "FLIGHT.DATE.THERE".localized
        backLabel.text = "FLIGHT.DATE.BACK".localized
        backButton.setTitle("FLIGHT.DATE.BACK".localized, for: .normal)
        backButton.titleLabel?.font = Font.regular11
        clearButton.setImage(UIImage(named: "clear"), for: .normal)
        clearButton.tintColor = .white
        setupDate()
        setupSeparators()
    }
    
    private func setupDate() {
        setupToolbar()
        dateFormatter.dateFormat = "dd MMMM, EEE"
        datePickerView.minimumDate = Date()
        datePickerView.backgroundColor = .white
        datePickerView.datePickerMode = .date
        thereTextField.text = dateFormatter.string(from: Date())
        thereTextField.inputView = datePickerView
        thereTextField.inputAccessoryView = toolbar
        backTextField.text = dateFormatter.string(from: Date())
        backTextField.inputView = datePickerView
        backTextField.inputAccessoryView = toolbar
    }
    
    private func setupToolbar() {
        let toolbarHeight = CGFloat(44)
        toolbar.frame = CGRect(x: 0, y: 0, width: frame.width, height: toolbarHeight)
        let doneButton = UIBarButtonItem(title: "FLIGT.TOOLBAR.BUTTON.DONE".localized, style: .plain, target: self, action: #selector(tapOnDoneButton))
        doneButton.tintColor = UIColor.black
        doneButton.setTitleTextAttributes([NSFontAttributeName: Font.regular13], for: .normal)
        let cancelButton = UIBarButtonItem(title: "FLIGT.TOOLBAR.BUTTON.CANCEL".localized, style: .plain, target: self, action: #selector(tapOnCancelButton))
        cancelButton.tintColor = UIColor.gray
        cancelButton.setTitleTextAttributes([NSFontAttributeName: Font.regular13], for: .normal)
        let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        toolbar.setItems([cancelButton, space, doneButton], animated: true)
        toolbar.backgroundColor = .white
        toolbar.barTintColor = .white
    }
    
    private func setupSeparators() {
        let topSeparator = UIView(frame: .zero)
        let bottomSeparator = UIView(frame: .zero)
        topSeparator.translatesAutoresizingMaskIntoConstraints = false
        bottomSeparator.translatesAutoresizingMaskIntoConstraints = false
        topSeparator.backgroundColor = Color.lightBlue
        bottomSeparator.backgroundColor = Color.lightBlue
        addSubview(topSeparator)
        addSubview(bottomSeparator)
        NSLayoutConstraint.activate([
            topSeparator.topAnchor.constraint(equalTo: topAnchor),
            topSeparator.heightAnchor.constraint(equalToConstant: 1),
            topSeparator.leadingAnchor.constraint(equalTo: leadingAnchor),
            topSeparator.trailingAnchor.constraint(equalTo: trailingAnchor),
            bottomSeparator.bottomAnchor.constraint(equalTo: bottomAnchor),
            bottomSeparator.heightAnchor.constraint(equalToConstant: 1),
            bottomSeparator.leadingAnchor.constraint(equalTo: leadingAnchor),
            bottomSeparator.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
    }
}
