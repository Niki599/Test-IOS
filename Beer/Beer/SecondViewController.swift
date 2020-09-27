//
//  SecondViewController.swift
//  Beer
//
//  Created by Nikita on 27.09.2020.
//  Copyright © 2020 Nikita. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    private var beerName: String?
    private var beerImage: UIImageView?
    private var beerDescription: String?
    
    init(beer:BeerModel) {
        super.init(nibName: nil, bundle: nil)
        
        beerName = beer.beerName
        beerImage = beer.mainImage
        beerDescription = beer.beerDescription
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setupView() {
        var mainView = UIView()
        mainView.backgroundColor = .white
        mainView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mainView)
        mainView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        mainView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        mainView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        mainView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        var imageBeer = UIImageView()
        imageBeer = beerImage ?? UIImageView()
        imageBeer.contentMode = .scaleAspectFit
        imageBeer.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(imageBeer)
        imageBeer.topAnchor.constraint(equalTo: self.view.topAnchor,constant: 45).isActive = true
        imageBeer.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageBeer.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height / 2.5).isActive = true
        
        var nameLabel = UILabel()
        nameLabel.text = beerName
        nameLabel.textColor = .black
        nameLabel.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(nameLabel)
        
        nameLabel.topAnchor.constraint(equalTo: imageBeer.bottomAnchor, constant: 25).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor,constant: 20).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor,constant: -20).isActive = true
        
        var descriptionLabel = UILabel()
        descriptionLabel.text = beerDescription
        descriptionLabel.textColor = .black
        descriptionLabel.numberOfLines = 0
        descriptionLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(descriptionLabel)
        descriptionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor , constant: 25).isActive = true
        descriptionLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor,constant: 20).isActive = true
        descriptionLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor,constant: -20).isActive = true
    }
}
