//
//  CityTableViewCell.swift
//  utair
//
//  Created by Anton Dryakhlykh on 01.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

class CityTableViewCell: UITableViewCell {
    
    // MARK: IBOutlets
    
    @IBOutlet weak var titleLabel: BoldWhiteLabel!
    @IBOutlet weak var subtitleLabel: TransparentBlueLabel!
    
    // MARK: UIKit

    override func awakeFromNib() {
        super.awakeFromNib()
        setupStyle()
    }
    
    // MARK: Internal helpers
    
    func fill(withCity city: City) {
        titleLabel.text = city.title
        subtitleLabel.text = "FLIGHT.CITY.ALL_AIRPORTS".localized
    }
    
    // MARK: Private helpers
    
    private func setupStyle() {
        backgroundColor = Color.blue
    }
}
