//
//  CityViewController.swift
//  utair
//
//  Created by Anton Dryakhlykh on 01/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

class CityViewController: RouterViewController, CityViewInput {
    
    // MARK: IBOutlets

    @IBOutlet weak var circleImageView: UIImageView!
    @IBOutlet weak var cityTextField: CityTextField!
    @IBOutlet weak var descriptionLabel: TransparentBlueLabel!
    @IBOutlet weak var tableView: TableView!
    
	// MARK: Properties
	
    var output: CityViewOutput!
    private var adapter: CityAdapter?

    // MARK: UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        output.setupView()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        view.endEditing(true)
    }

    // MARK: CityViewInput

    func setupView(withCities cities: [City]) {
        let adapter = CityAdapter(tableView: tableView, cities: cities)
        tableView.dataSource = adapter
        tableView.delegate = adapter
        adapter.block = { [weak self] city in self?.output.didTapOnCity(withCity: city) }
        self.adapter = adapter
        cityTextField.becomeFirstResponder()
    }
    
    func setupView(withPlaceholder placeholder: String, text: String, subtitle: String, imageName: String) {
        circleImageView.tintColor = .white
        circleImageView.image = UIImage(named: imageName)
        if text != placeholder {
            cityTextField.text = text
        }
        cityTextField.placeholder = placeholder
        descriptionLabel.text = subtitle
    }
}
