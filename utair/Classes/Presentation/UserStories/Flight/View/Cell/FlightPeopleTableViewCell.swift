//
//  FlightPeopleTableViewCell.swift
//  utair
//
//  Created by Anton Dryakhlykh on 01.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

class FlightPeopleTableViewCell: UITableViewCell {
    
    // MARK: IBOutlets

    @IBOutlet weak var adultPlusButton: UIButton!
    @IBOutlet weak var adultCountLabel: UILabel!
    @IBOutlet weak var adultImageView: UIImageView!
    @IBOutlet weak var adultTitleLabel: UILabel!
    @IBOutlet weak var adultMinusButton: UIButton!
    @IBOutlet weak var childPlusButton: PlusButton!
    @IBOutlet weak var childCountLabel: UILabel!
    @IBOutlet weak var childImageView: UIImageView!
    @IBOutlet weak var childTitleLabel: UILabel!
    @IBOutlet weak var childMinusButton: MinusButton!
    @IBOutlet weak var babyPlusButton: PlusButton!
    @IBOutlet weak var babyCountLabel: UILabel!
    @IBOutlet weak var babyImageView: UIImageView!
    @IBOutlet weak var babyTitleLabel: UILabel!
    @IBOutlet weak var babyMinusButton: MinusButton!
    
    // MARK: IBActions
    
    @IBAction func adultPlusButtonAction(_ sender: Any) {
        if adultCount != maxPassengersCount && (childCount + adultCount + babyCount) != maxPassengersCount {
            adultCount += 1
            adultCountLabel.text = adultCount.description
        } else {
            errorBlock?(.passangersGreaterThan9)
        }
    }
    
    @IBAction func adultMinusButtonAction(_ sender: Any) {
        if adultCount != 1 {
            adultCount -= 1
            adultCountLabel.text = adultCount.description
        }
    }
    
    @IBAction func childPlusButtonAction(_ sender: Any) {
        if childCount != 8 && (childCount + adultCount + babyCount) != maxPassengersCount {
            childCount += 1
            childCountLabel.text = childCount.description
            childTitleLabel.textColor = .white
            childImageView.tintColor = .white
            childCountLabel.textColor = .white
        } else {
            errorBlock?(.passangersGreaterThan9)
        }
    }
    
    @IBAction func childMinusButtonAction(_ sender: Any) {
        if childCount != 0 {
            childCount -= 1
            childCountLabel.text = childCount.description
            if childCount == 0 {
                childTitleLabel.textColor = Color.lightBlue
                childImageView.tintColor = Color.lightBlue
                childCountLabel.textColor = Color.lightBlue
            }
        }
    }
    
    @IBAction func babyPlusButtonAction(_ sender: Any) {
        if babyCount != adultCount && (childCount + adultCount + babyCount) != maxPassengersCount {
            babyCount += 1
            babyCountLabel.text = babyCount.description
            babyTitleLabel.textColor = .white
            babyImageView.tintColor = .white
            babyCountLabel.textColor = .white
        } else {
            if babyCount == adultCount {
                errorBlock?(.babyGreaterThanAdult)
            } else if (childCount + adultCount + babyCount) != maxPassengersCount {
                errorBlock?(.passangersGreaterThan9)
            } else {
                errorBlock?(.passangersGreaterThan9)
            }
        }
    }
    
    @IBAction func babyMinusButtonAction(_ sender: Any) {
        if babyCount != 0 {
            babyCount -= 1
            babyCountLabel.text = babyCount.description
            if babyCount == 0 {
                babyTitleLabel.textColor = Color.lightBlue
                babyImageView.tintColor = Color.lightBlue
                babyCountLabel.textColor = Color.lightBlue
            }
        }
    }
    
    // MARK: Constants
    
    private let maxPassengersCount = 9
    
    // MARK: Properties
    
    private var adultCount = 1
    private var childCount = 0
    private var babyCount = 0
    var errorBlock: ErrorBlock?
    
    // MARK: UIKit
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupStyle()
    }
    
    // MARK: Private helpers
    
    private func setupStyle() {
        backgroundColor = Color.blue
        setupAdultStepper()
        setupChildStepper()
        setupBabyStepper()
    }
    
    private func setupAdultStepper() {
        adultTitleLabel.text = "FLIGHT.AGE.ADULT".localized
        adultImageView.image = UIImage(named: "icn-booking-kid@1x")
        adultImageView.tintColor = .white
        adultCountLabel.text = adultCount.description
    }
    
    private func setupChildStepper() {
        childTitleLabel.text = "FLIGHT.AGE.CHILD".localized
        childImageView.image = UIImage(named: "icn-booking-kid@1x")
        childImageView.contentMode = .bottom
        childCountLabel.text = childCount.description
        childTitleLabel.textColor = Color.lightBlue
        childImageView.tintColor = Color.lightBlue
        childCountLabel.textColor = Color.lightBlue
    }
    
    private func setupBabyStepper() {
        babyTitleLabel.text = "FLIGHT.AGE.BABY".localized
        babyImageView.image = UIImage(named: "icn-booking-baby@1x")
        babyImageView.contentMode = .bottom
        babyImageView.tintColor = .white
        babyCountLabel.text = babyCount.description
        babyTitleLabel.textColor = Color.lightBlue
        babyImageView.tintColor = Color.lightBlue
        babyCountLabel.textColor = Color.lightBlue
    }
}
