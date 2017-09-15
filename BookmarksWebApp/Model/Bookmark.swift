//
//  Bookmark.swift
//  BookmarksWebApp
//
//  Created by Stefan Markovic on 9/15/17.
//  Copyright © 2017 Stefan Markovic. All rights reserved.
//

import UIKit

class Bookmark {
    
    private(set) var name: String
    private(set) var link: String
    private(set) var icon: UIImage
    
    init(name: String, link: String, icon: UIImage) {
        
        self.name = name
        self.link = link
        self.icon = icon
    }
    
}
