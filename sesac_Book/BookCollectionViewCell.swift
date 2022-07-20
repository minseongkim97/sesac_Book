//
//  BookCollectionViewCell.swift
//  sesac_Book
//
//  Created by MIN SEONG KIM on 2022/07/20.
//

import UIKit

class BookCollectionViewCell: UICollectionViewCell {
    var backgroundColors: [UIColor] = [.systemPurple, .systemBlue, .systemPink, .systemCyan]
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var rateLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.layer.cornerRadius = 10
        contentView.backgroundColor = backgroundColors.randomElement()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        contentView.layer.cornerRadius = 10
        contentView.backgroundColor = backgroundColors.randomElement()
    }
    
    func configureCell(movie: Movie) {
        titleLabel.text = movie.title
        rateLabel.text = "\(round(movie.rate*10)/10)"
        movieImageView.image = UIImage(named: movie.title) ?? UIImage(named: "광해")!
    }
}
