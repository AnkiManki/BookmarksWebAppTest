//
//  BookmarksCell.swift
//  BookmarksWebApp
//
//  Created by Stefan Markovic on 9/15/17.
//  Copyright © 2017 Stefan Markovic. All rights reserved.
//

import UIKit

class BookmarksCell: UICollectionViewCell {
    
    @IBOutlet weak var bookmarkImage: UIImageView!
    @IBOutlet weak var bookmarkNameLbl: UILabel!
    
    func createCell(image: UIImage, name: String) {
        bookmarkImage.image = image
        bookmarkNameLbl.text = name
    }
    
}
