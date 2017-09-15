//
//  BookmarksCell.swift
//  BookmarksWebApp
//
//  Created by Stefan Markovic on 9/15/17.
//  Copyright © 2017 Stefan Markovic. All rights reserved.
//

import UIKit

class BookmarksCell: UICollectionViewCell {
    
    var bookmark: Bookmark!
    
    @IBOutlet weak var bookmarkImage: UIImageView!
    @IBOutlet weak var bookmarkNameLbl: UILabel!

    
    func createCell(bookmark: Bookmark) {
        self.bookmark = bookmark
        bookmarkImage.image = UIImage(named: self.bookmark.iconImgName)
        bookmarkNameLbl.text = self.bookmark.name
    }


    
}
