//
//  DetailViewController.swift
//  sesac_Book
//
//  Created by MIN SEONG KIM on 2022/07/21.
//

import UIKit

class DetailViewController: UIViewController {
    static let identifier = "DetailViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func didTappedButton(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: WebViewController.identifier) as! WebViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
