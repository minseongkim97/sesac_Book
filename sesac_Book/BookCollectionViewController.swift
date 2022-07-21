//
//  BookCollectionViewController.swift
//  sesac_Book
//
//  Created by MIN SEONG KIM on 2022/07/20.
//

import UIKit


class BookCollectionViewController: UICollectionViewController {

    let movieList = MovieInfo()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: #selector(searchButtonClicked))
        
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 8
        let width = UIScreen.main.bounds.width - (spacing * 3)
        layout.itemSize = CGSize(width: width / 2, height: width / 2)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        collectionView.collectionViewLayout = layout
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieList.movie.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookCollectionViewCell", for: indexPath) as! BookCollectionViewCell
        cell.configureCell(movie: movieList.movie[indexPath.row])
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: DetailViewController.identifier) as! DetailViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func searchButtonClicked() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: SearchViewController.identifier) as! SearchViewController
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        self.present(nav, animated: true)
    }
}
