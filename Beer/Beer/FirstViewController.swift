//
//  ViewController.swift
//  Beer
//
//  Created by Nikita on 25.09.2020.
//  Copyright © 2020 Nikita. All rights reserved.
//

import UIKit

protocol FirstViewConrollerProtocolDelegate: class {
    func openVc(beerMod: BeerModel)
}

class FirstViewConroller: UIViewController {
    
    var model: BeerModel?
    var beerCollectionsView = BeerCollectionView()
    var delegate: FirstViewConrollerProtocolDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        beerCollectionsView.firstViewConrollerProtocolDelegate = self
    }
    
    
    //            /**
    //             Я пытался спарсить json, но обнаружил на сайте API, что я получаю в JSON сразу массив. После чего я пытался разобраться со способами его парсинга и у меня получилось это --
    //             */
    
    //    func getData() {
    //        guard let url = URL(string: "https://api.punkapi.com/v2/beers") else {
    //            return
    //        }
    //        let session = URLSession.shared
    //        var dataSource: [Dictionary<String,Any>]?
    //        session.dataTask(with: url) { (data, response, error) in
    //            if let response = response {
    //                print(response)
    //            }
    //
    //            guard let data = data else { return }
    ////            print(data)
    //    //
    //            // 1 Способ парсинга json
    //            do {
    //                let welcome = try? JSONDecoder().decode(Welcome.self, from: data)
    //                print(welcome)
    //
    //            } catch {
    //                print(error)
    //            }
    //
    //            // 2 Способ парсинга json
    //            do {
    //                let json = try JSONSerialization.jsonObject(with: data, options: [])
    //
    //                dataSource = json as! [Dictionary<String,Any>]
    //                print(dataSource)
    //
    //                self.getModel(data: json)
    //            } catch {
    //                print(error)
    //            }
    //
    //        }.resume()
    //    }
    
    //    func getModel(data: Any) {
    //
    ////        do {
    ////        var mas = try JSONDecoder().decode(BeerModel.self, from: data)
    ////        } catch {
    ////            let error = error
    ////            print(error)
    ////
    ////        }
    ////            if hams == uid as? String {
    ////        for (name, value) in data as! NSArray {
    ////            if name as! String == "name" {
    ////                self.model?.beerName = value as! String
    ////            }
    ////        }
    ////        self.model?.beerName = dict?.value(forKeyPath: "name") as? String
    ////            }
    //
    //    }
    //    private var beerTable: UICollectionView!
    //    private var constraints: [NSLayoutConstraint]!
    //    var layout = UICollectionViewFlowLayout()
    //
    
    public func setupView() {
        beerCollectionsView.set(cells: BeerModel.setMas())
        var constraints = [NSLayoutConstraint]()
        view.addSubview(beerCollectionsView)
        
        var mainlabel = UILabel()
        mainlabel.text = "Beer Library"
        mainlabel.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        mainlabel.clipsToBounds = true
        mainlabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mainlabel)
        
        mainlabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 85).isActive = true
        mainlabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        
        beerCollectionsView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        beerCollectionsView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant:0).isActive = true
        beerCollectionsView.topAnchor.constraint(equalTo: mainlabel.bottomAnchor, constant: 100).isActive = true
        beerCollectionsView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -125).isActive = true
        
    }
    
}

extension FirstViewConroller: FirstViewConrollerProtocolDelegate {
    
    func openVc(beerMod: BeerModel) {
        var secVC = SecondViewController(beer: beerMod)
        self.present(secVC, animated: true, completion: nil)
    }
}




