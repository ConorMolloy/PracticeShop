//
//  CategoryTableViewCell.swift
//  PracticeShop
//
//  Created by Conor Molloy on 14/06/2018.
//  Copyright © 2018 Conor Molloy. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
