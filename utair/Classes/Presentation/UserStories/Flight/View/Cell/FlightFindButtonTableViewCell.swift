//
//  FlightFindButtonTableViewCell.swift
//  utair
//
//  Created by Anton Dryakhlykh on 01.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

class FlightFindButtonTableViewCell: UITableViewCell {
    
    // MARK: IBOutlets
    
    @IBOutlet weak var findButton: FindButton!
    
    // MARK: IBActions
    
    @IBAction func findButtonAction(_ sender: Any) { }
    
    // MARK: UIKit

    override func awakeFromNib() {
        super.awakeFromNib()
        setupStyle()
    }
    
    // MARK: Private helpers
    
    private func setupStyle() {
        backgroundColor = Color.blue
        findButton.setTitle("FLIGT.BUTTON.FIND".localized, for: .normal)
    }
}
