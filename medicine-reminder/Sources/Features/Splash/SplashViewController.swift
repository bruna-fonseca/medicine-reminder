//
//  SplashViewController.swift
//  medicine-reminder
//
//  Created by Bruna Fonseca on 14/08/25.
//

import Foundation
import UIKit

class SplashViewController: UIViewController {
    let contentView = SplashView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        setupGesture()
    }

    private func setup() {
        view.backgroundColor = .yellow
        view.addSubview(contentView)

        setupConstraints()
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(showLoginBottomSheet))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc
    private func showLoginBottomSheet() {
        let loginBottomSheet = LoginBottomSheetViewController()
        loginBottomSheet.modalPresentationStyle = .overCurrentContext
        loginBottomSheet.modalTransitionStyle = .crossDissolve
        present(loginBottomSheet, animated: false) {
            loginBottomSheet.animateShow {
                
            }
        }
    }
}
