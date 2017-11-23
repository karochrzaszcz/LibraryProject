//
//  SearchViewController.swift
//  Library
//
//  Created by Kryg Tomasz on 29.10.2017.
//  Copyright © 2017 Kryg Tomek. All rights reserved.
//

import UIKit

class SearchViewController: MainVC {

    @IBOutlet weak var titleView: UIView!
    @IBOutlet weak var viewTitleLabel: UILabel! {
        didSet {
            viewTitleLabel.textColor = .tintDark
            viewTitleLabel.text = R.string.localizable.bookSearch()
        }
    }
    @IBOutlet weak var titleSeparatorView: UIView! {
        didSet {
            titleSeparatorView.backgroundColor = .tintDark
        }
    }
    @IBOutlet weak var searchButton: UIButton! {
        didSet {
            searchButton.appTheme()
            searchButton.setTitle(R.string.localizable.search(), for: .normal)
            searchButton.addTarget(self, action: #selector(onSearchButtonClicked), for: .touchUpInside)
            searchButton.addShadow()
        }
    }
    
    weak var delegate: MainPageViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setColor(to: .main)
        addParallaxEffect()
    }
    
    private func addParallaxEffect() {
        titleView.addParallaxEffect(15)
        searchButton.addParallaxEffect(30)
    }
    
    @objc func onSearchButtonClicked() {
        delegate?.nextViewController(from: self)
    }
    
//    private func showLoginScreen() {
//        let storyboard = R.storyboard.login()
//        let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginVC")
//        loginVC.modalPresentationStyle = .overCurrentContext
//        self.present(loginVC, animated: true, completion: nil)
//    }

}
