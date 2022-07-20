//
//  BookCollectionViewCell.swift
//  sesac_Book
//
//  Created by MIN SEONG KIM on 2022/07/20.
//

import UIKit

class BookCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var rateLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    
    
    
    func configureCell(movie: Movie) {
        titleLabel.text = movie.title
        rateLabel.text = "\(round(movie.rate*10)/10)"
    }
}
