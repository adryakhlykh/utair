//
//  NavigationBarTitleView.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

class NavigationBarTitleView: UIView {
    
    // MARK: Constants
    
    let leftNavigationTitleLabel = NavigationBarTitleLabel()
    let rightNavigationTitleLabel = NavigationBarTitleLabel()
    let navigationTitleImageView = UIImageView()
    
    // MARK: Initialization and deinitialization

    override init(frame: CGRect) {
        super.init(frame: frame)
        initTitleView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initTitleView()
    }
    
    convenience init() {
        self.init(frame: .zero)
        initTitleView()
    }
    
    // MARK: Private helpers
    
    private func initTitleView() {
        leftNavigationTitleLabel.textAlignment = .right
        translatesAutoresizingMaskIntoConstraints = false
        navigationTitleImageView.contentMode = .scaleAspectFit
        let stackView = UIStackView(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.frame = bounds
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        stackView.addArrangedSubview(leftNavigationTitleLabel)
        stackView.addArrangedSubview(navigationTitleImageView)
        stackView.addArrangedSubview(rightNavigationTitleLabel)
        addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            stackView.heightAnchor.constraint(equalTo: heightAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.widthAnchor.constraint(equalTo: widthAnchor)
        ])
    }
}
