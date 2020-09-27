//
//  BeerModel.swift
//  Beer
//
//  Created by Nikita on 25.09.2020.
//  Copyright © 2020 Nikita. All rights reserved.
//

import Foundation

import UIKit

struct BeerModel {
    var mainImage: UIImageView?
    var beerName: String?
    var beerDescription: String?
    
    static func setMas() -> [BeerModel] {
        let firstItem = BeerModel(mainImage: UIImageView(image: UIImage(named: "Beer.png")),
                                  beerName: "India Session Lager",
                                  beerDescription: "BrewDog’s level of dry-hop to a beer formed with a baseline of 100% pilsner malt – and at under 4.5% ABV – gives you a style that flirts at the edges of several others. Think aromas of fresh cut grass, nettle, white grape, melon, tangerine - with similar flavours leading to a dry, bitter finish")
        
        let secondItem = BeerModel(mainImage:UIImageView(image: UIImage(named: "2.png")),
                                   beerName: "Hopped-Up Brown Ale",
                                   beerDescription: "Brown ales are perfect foils for resinous C-Hops, as the piney elements of the latter contrast brilliantly with the sweeter, nutty elements of the malt bill. The best of both worlds.")
        
        let thirdItem = BeerModel(mainImage: UIImageView(image: UIImage(named: "3.png")),
                                  beerName: "Comet",
                                  beerDescription: "A potently bitter hop variety originally grown in the US around 40 years ago, Comet has been newly resurrected - this German version has bold resinous grapefruit flavours, which add a huge fresh hop aroma to this IPA.")
        
        let fourthItem = BeerModel(mainImage:UIImageView(image: UIImage(named: "Beer.png")),
                                   beerName: "Baby Saison",
                                   beerDescription: "A hark back to the origins of Saison; slight spice and earthy notes with highlights of lemon and pepper make a beer that could quench the thirst of any seasonal worker.")
        
        let fiveItem = BeerModel(mainImage: UIImageView(image: UIImage(named: "5.png")),
                                 beerName: "Santa Paws",
                                 beerDescription: "A 4.5% decadent scotch ale brewed with Scottish heather honey. A robust malty beer packed with flavour, at a strength you can drink all (Christmas) day long. Santa Paws is our antidote to the chaos of the festive season. All the flavours of Christmas pudding in liquid form.")
        
        let sixItem = BeerModel(mainImage: UIImageView(image: UIImage(named: "6.png")),
                                beerName: "Original Dogma",
                                beerDescription: "A strong ale, brewed with guarana, Californian poppy, kola nut and Scottish heather honey. A conspiracy of trans-continental ingredients infused with some devastatingly BrewDog imaginative thinking.")
        
        let sevenItem = BeerModel(mainImage: UIImageView(image: UIImage(named: "Beer.png")),
                                  beerName: "Baby Saison",
                                  beerDescription: "A hark back to the origins of Saison; slight spice and earthy notes with highlights of lemon and pepper make a beer that could quench the thirst of any seasonal worker.")
        
        let eightItem = BeerModel(mainImage: UIImageView(image: UIImage(named: "5.png")),
                                  beerName: "Santa Paws",
                                  beerDescription: "A 4.5% decadent scotch ale brewed with Scottish heather honey. A robust malty beer packed with flavour, at a strength you can drink all (Christmas) day long. Santa Paws is our antidote to the chaos of the festive season. All the flavours of Christmas pudding in liquid form.")
        
        let nineItem = BeerModel(mainImage: UIImageView(image: UIImage(named: "6.png")),
                                 beerName: "Original Dogma",
                                 beerDescription: "A strong ale, brewed with guarana, Californian poppy, kola nut and Scottish heather honey. A conspiracy of trans-continental ingredients infused with some devastatingly BrewDog imaginative thinking.")
        
        return [firstItem, secondItem, thirdItem, fourthItem, fiveItem, sixItem, sevenItem, eightItem, nineItem]
    }
    
}

struct constants {
    static let leftDistanceToView: CGFloat = 40
    static let rightDistanceToView: CGFloat = 40
    static let minLineSpacing: CGFloat = 10
    static let itemWidth = (UIScreen.main.bounds.width - constants.leftDistanceToView - constants.rightDistanceToView - (constants.minLineSpacing / 2)) / 2
}
