//
//  FlightCityTableViewCell.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31.03.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

class FlightCityTableViewCell: UITableViewCell {
    
    // MARK: IBOutlets

    @IBOutlet weak var emptyCircleImageView: UIImageView!
    @IBOutlet weak var dotsImageView: UIImageView!
    @IBOutlet weak var filledCircleImageView: UIImageView!
    @IBOutlet weak var fromTitleLabel: UILabel!
    @IBOutlet weak var fromSubtitleLabel: UILabel!
    @IBOutlet weak var toTitleLabel: UILabel!
    @IBOutlet weak var toSubtitleLabel: UILabel!
    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var toView: UIView!
    
    // MARK: IBActions

    @IBAction func changeButtonAction(_ sender: Any) { print("tap") }
    
    // MARK: UIKit
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupStyle()
    }
    
    // MARK: Internal helpers
    
    func fill(withIndex index: Int) {
        
    }
    
    // MARK: Private helpers
    
    private func setupStyle() {
        backgroundColor = Color.blue
        setupImages()
        fromTitleLabel.text = "FLIGHT.CITY.FROM".localized
        fromSubtitleLabel.text = "FLIGHT.CITY.DIRECTION".localized
        setupToView()
        setupChangeButton()
    }
    
    private func setupChangeButton() {
        changeButton.setImage(UIImage(named: "icnBookingCityChangeActive"), for: .normal)
        changeButton.imageView?.tintColor = .white
        let layer = CALayer()
        layer.frame = changeButton.bounds
        let rotation = CATransform3DMakeRotation(3 * CGFloat.pi / 4, 0, 0, 1)
        let scaling = CATransform3DMakeScale(0.7, 0.7, 1)
        layer.transform = CATransform3DConcat(rotation, scaling)
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.white.cgColor
        layer.cornerRadius = 4.0
        changeButton.layer.addSublayer(layer)
        changeButton.layer.masksToBounds = true
    }
    
    private func setupToView() {
        toTitleLabel.text = "FLIGHT.CITY.TO".localized
        toSubtitleLabel.text = "FLIGHT.CITY.DIRECTION".localized
        let separator = UIView(frame: .zero)
        separator.translatesAutoresizingMaskIntoConstraints = false
        separator.backgroundColor = Color.lightBlue
        toView.addSubview(separator)
        NSLayoutConstraint.activate([
            separator.leadingAnchor.constraint(equalTo: toView.leadingAnchor),
            separator.trailingAnchor.constraint(equalTo: toView.trailingAnchor),
            separator.topAnchor.constraint(equalTo: toView.topAnchor),
            separator.heightAnchor.constraint(equalToConstant: 1),
            separator.widthAnchor.constraint(equalTo: toView.widthAnchor)
        ])
    }
    
    private func setupImages() {
        emptyCircleImageView.image = UIImage(named: "icnGlobalDotBig1")
        filledCircleImageView.image = UIImage(named: "icnGlobalDotBig2")
        dotsImageView.image = UIImage(named: "icnGlobalDotsSmall")
        emptyCircleImageView.tintColor = .white
        filledCircleImageView.tintColor = .white
        dotsImageView.tintColor = .white
    }
}
