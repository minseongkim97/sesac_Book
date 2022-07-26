//
//  SearchViewController.swift
//  sesac_Book
//
//  Created by MIN SEONG KIM on 2022/07/21.
//

import UIKit

class SearchViewController: UIViewController {
    static let identifier = "SearchViewController"

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(dismissButtonClicked))
        
    }
    
    @objc func dismissButtonClicked() {
        self.dismiss(animated: true)
    }
}
