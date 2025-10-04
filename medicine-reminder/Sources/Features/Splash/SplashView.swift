//
//  SplashView.swift
//  medicine-reminder
//
//  Created by Bruna Fonseca on 14/08/25.
//

import Foundation
import UIKit

class SplashView: UIView {
    private let logoImageView: UIView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Logo")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: .zero)

        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        backgroundColor = Colors.primaryRedBase
        
        addSubview(logoImageView)
        
        setupContraints()
    }
    
    private func setupContraints() {
        NSLayoutConstraint.activate([
            logoImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoImageView.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -Metrics.medium)
        ])
        
    }
}
