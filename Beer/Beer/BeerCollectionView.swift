//
//  BeerCollectionView.swift
//  Beer
//
//  Created by Nikita on 25.09.2020.
//  Copyright © 2020 Nikita. All rights reserved.
//

import UIKit

class BeerCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var cells = [BeerModel]()
    weak var firstViewConrollerProtocolDelegate: FirstViewConrollerProtocolDelegate?
    
    init() {
        let layout = UICollectionViewFlowLayout.init()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        self.translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .clear
        delegate = self
        dataSource = self
        register(BeerCollectionViewCell.self, forCellWithReuseIdentifier: BeerCollectionViewCell.reuseID)
        layout.minimumLineSpacing = constants.minLineSpacing
        contentInset = UIEdgeInsets(top: 0, left: constants.leftDistanceToView, bottom: 0, right: constants.rightDistanceToView)
        showsVerticalScrollIndicator = false
        showsHorizontalScrollIndicator = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set (cells: [BeerModel]) {
        self.cells = cells
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  cells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: BeerCollectionViewCell.reuseID, for: indexPath) as! BeerCollectionViewCell
        cell.imageBeer.image = cells[indexPath.row].mainImage?.image
        cell.name.text = cells[indexPath.row].beerName
        cell.beerDescription.text = cells[indexPath.row].beerDescription
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: constants.itemWidth, height: frame.height * 0.8)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        firstViewConrollerProtocolDelegate?.openVc(beerMod: cells[indexPath.row])
    }
}
