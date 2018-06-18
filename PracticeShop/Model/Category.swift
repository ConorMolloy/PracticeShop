//
//  Category.swift
//  PracticeShop
//
//  Created by Conor Molloy on 14/06/2018.
//  Copyright © 2018 Conor Molloy. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
