//
//  CustomTextField.swift
//  PriceChecker
//
//  Created by Ewele Val-Okenyi on 21/07/2023.
//

import UIKit

class CustomTextField: UITextField {
    private let rightLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .lightGray
        label.font = UIFont(name: "AvenirNext-DemiBold", size: 20) ?? UIFont.systemFont(ofSize: 20, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    var rightLabelText: String? {
        get { return rightLabel.text }
        set { rightLabel.text = newValue }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }

    private func setupViews() {
        translatesAutoresizingMaskIntoConstraints = false
        
        
        let container: UIView = UIView.init(frame: CGRect(x: 0, y: 0, width: 16, height: 0))
        let container1: UIView = UIView.init(frame: CGRect(x: 0, y: 0, width: 16, height: 0))
        container.addSubview(rightLabel)
        NSLayoutConstraint.activate([
            rightLabel.topAnchor.constraint(equalTo: container.topAnchor),
            rightLabel.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -20),
            rightLabel.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 10),
            rightLabel.bottomAnchor.constraint(equalTo: container.bottomAnchor), // Adjust the width as needed
        ])
        rightView = container
        rightViewMode = .always
        leftView = container1
        leftViewMode = .always
        
        layer.cornerRadius = 4
        layer.masksToBounds = true
        borderStyle = .none
        backgroundColor = UIColor.lightGray.withAlphaComponent(0.1)
        textColor = .black
        font = UIFont(name: "AvenirNext-DemiBold", size: 20) ?? UIFont.systemFont(ofSize: 20, weight: .bold)
        placeholder = "0"
    }
}
