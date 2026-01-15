//
//  CurrencyConversionView.swift
//  PriceChecker
//
//  Created by Ewele Val-Okenyi on 20/07/2023.
//

import UIKit

class CurrencyConversionView: UIScrollView {
    
    private let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let hamburgerButton: UIButton = {
        let button = UIButton()
        let hamburgerIcon = UIImage(named: "menu")?.withRenderingMode(.alwaysTemplate)
        button.setImage(hamburgerIcon, for: .normal)
        button.tintColor = .green
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let signupButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign up", for: .normal)
        button.setTitleColor(.green, for: .normal)
        button.tintColor = .green
        button.titleLabel?.font = UIFont(name: "AvenirNext-DemiBold", size: 20) ?? UIFont.boldSystemFont(ofSize: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.contentHorizontalAlignment = .right
        return button
    }()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = .systemBlue
        label.numberOfLines = 0
        label.font = UIFont(name: "AvenirNext-Bold", size: 45) ?? UIFont.systemFont(ofSize: 45, weight: .heavy)
        label.translatesAutoresizingMaskIntoConstraints = false
        let attributedString = NSMutableAttributedString(string: "Currency \nCalculator.")
        let attributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.green,]
        attributedString.setAttributes(attributes, range: NSRange(location: 20, length: 1))
        label.attributedText = attributedString
        return label
    }()
    
    private let currencyLabel1: CustomTextField = {
        let textField = CustomTextField()
        textField.rightLabelText = "EUR"
        textField.text = "1"
        return textField
    }()
    
    private let currencyLabel2: CustomTextField = {
        let textField = CustomTextField()
        textField.rightLabelText = "PLN"
        textField.text = "4.264820"
        return textField
    }()
    
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
        backgroundColor = .white
        
        //Mark - add views
        stackView.addArrangedSubview(hamburgerButton)
        stackView.addArrangedSubview(signupButton)
        addSubview(contentView)
        [stackView, titleLabel, currencyLabel1, currencyLabel2].forEach { view in
            contentView.addSubview(view)
//            addSubview(view)
        }
        
        //Mark - view constraint
        NSLayoutConstraint.activate([
            contentView.centerXAnchor.constraint(equalTo: centerXAnchor),
            contentView.widthAnchor.constraint(equalTo: widthAnchor),
//            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
//            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.topAnchor.constraint(equalTo: topAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 100),
            
            titleLabel.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 70),
            titleLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
//            titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            currencyLabel1.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50),
            currencyLabel1.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
            currencyLabel1.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
            currencyLabel1.heightAnchor.constraint(equalToConstant: 60),

            currencyLabel2.topAnchor.constraint(equalTo: currencyLabel1.bottomAnchor, constant: 20),
            currencyLabel2.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
            currencyLabel2.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
            currencyLabel2.heightAnchor.constraint(equalToConstant: 60),
        ])
        
        //Mark - stack view constraint
        NSLayoutConstraint.activate([
            hamburgerButton.heightAnchor.constraint(equalToConstant: 35),
            hamburgerButton.widthAnchor.constraint(equalToConstant: 30),

            signupButton.heightAnchor.constraint(equalToConstant: 35),
        ])
    }
}
