//
//  ViewController.swift
//  BookmarksWebApp
//
//  Created by Stefan Markovic on 9/15/17.
//  Copyright © 2017 Stefan Markovic. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var myCollectionView: UICollectionView!

    
    let bookmark = [Bookmark(name: "Apple", link: "https://www.apple.com", icon: UIImage(named: "apple")!),
                    Bookmark(name: "Google", link: "https://www.google.com", icon: UIImage(named: "google")!),
                    Bookmark(name: "Facebook", link: "https://www.facebook.com", icon: UIImage(named: "fb")!),
                    Bookmark(name: "Stack Overflow", link: "https://www.stackoverflow.com", icon: UIImage(named: "stackoverflow")!)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bookmark.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! BookmarksCell
        cell.createCell(bookmark: bookmark[indexPath.row])
        
        return cell
        
    }


}

