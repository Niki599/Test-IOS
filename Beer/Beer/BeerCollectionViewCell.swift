//
//  BeerCollectionViewCell.swift
//  Beer
//
//  Created by Nikita on 25.09.2020.
//  Copyright © 2020 Nikita. All rights reserved.
//

import UIKit

class BeerCollectionViewCell: UICollectionViewCell {
    
    static let reuseID = "BeerCollectionViewCell"
    
    let imageBeer: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .clear
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let name: UILabel = {
        let name = UILabel()
        name.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        name.textColor = .black
        name.translatesAutoresizingMaskIntoConstraints = false
        name.numberOfLines = 0
        return name
    }()
    
    let beerDescription: UILabel = {
        let name = UILabel()
        name.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        name.textColor = .black
        name.translatesAutoresizingMaskIntoConstraints = false
        name.numberOfLines = 0
        return name
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageBeer)
        addSubview(name)
        
        imageBeer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5).isActive = true
        imageBeer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5).isActive = true
        imageBeer.topAnchor.constraint(equalTo: topAnchor,constant: 5).isActive = true
        imageBeer.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -40).isActive = true
        
        name.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        name.topAnchor.constraint(equalTo: imageBeer.bottomAnchor, constant: 15).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 5
        self.layer.shadowRadius = 9
        layer.shadowOpacity = 0.4
        layer.shadowOffset = CGSize(width: 8, height: 16)
        self.clipsToBounds = false
    }
}
