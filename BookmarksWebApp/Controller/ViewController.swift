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

    
    let bookmark = [Bookmark(name: "Apple", link: "https://www.apple.com", iconImgName:"apple"),
                    Bookmark(name: "Google", link: "https://www.google.com", iconImgName:"google"),
                    Bookmark(name: "Facebook", link: "https://www.facebook.com", iconImgName:"fb"),
                    Bookmark(name: "Stack Overflow", link: "http://www.stackoverflow.com", iconImgName:"stackoverflow")
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        var bmark: Bookmark!
        bmark = bookmark[indexPath.row]
        performSegue(withIdentifier: "showWeb", sender: bmark)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showWeb" {
            if let webVC = segue.destination as? WebviewVC {
                if let bmark = sender as? Bookmark {
                    webVC.bookmark = bmark
                }
            }
        }
    }

    

}













