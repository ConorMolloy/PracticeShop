//
//  File.swift
//  PracticeShop
//
//  Created by Conor Molloy on 14/06/2018.
//  Copyright © 2018 Conor Molloy. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "Shirts", imageName: "shirts.png"),
        Category(title: "Hoodies", imageName: "hoodies.png"),
        Category(title: "Hats", imageName: "hats.png"),
        Category(title: "Digital", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Graphic Beanie", price: "€10", imageName: "hat01.png"),
        Product(title: "Black Hat", price: "€15", imageName: "hat02.png"),
        Product(title: "White Hat", price: "€15", imageName: "hat03.png"),
        Product(title: "Snapback Hat", price: "€13", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Grey Logo Hoodie", price: "€25", imageName: "hoodie01.png"),
        Product(title: "Red Hoodie", price: "€25", imageName: "hoodie02.png"),
        Product(title: "Grey Hoodie", price: "€25", imageName: "hoodie03.png"),
        Product(title: "Black Hoodie", price: "€25", imageName: "hoodie04.png")
    ]
    
    private let shirt = [
        Product(title: "Black Logo Shirt", price: "€20", imageName: "shirt01.png"),
        Product(title: "Light Grey Logo Shirt", price: "€20", imageName: "shirt02.png"),
        Product(title: "Red Logo Shirt", price: "€20", imageName: "shirt03.png"),
        Product(title: "Delegate Shirt", price: "€20", imageName: "shirt04.png"),
        Product(title: "Studio Logo Shirt", price: "€20", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle: String) -> [Product] {
        switch forCategoryTitle {
        case "Shirts":
            return getShirts()
        case "Hats":
            return getHats()
        case "Hoodies":
            return getHoodies()
        case "Digital":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirt
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
