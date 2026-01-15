//
//  ViewController.swift
//  PriceChecker
//
//  Created by Ewele Val-Okenyi on 18/07/2023.
//

import UIKit

class ViewController: UIViewController {

    let conversionView = CurrencyConversionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        view.addSubview(conversionView)
        NSLayoutConstraint.activate([
            conversionView.topAnchor.constraint(equalTo: view.topAnchor),
            conversionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            conversionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            conversionView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}

