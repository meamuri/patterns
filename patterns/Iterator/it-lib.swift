//
//  it-lib.swift
//  patterns
//
//  Created by Rom Dr on 11.03.2018.
//  Copyright © 2018 Rom Dr. All rights reserved.
//

import Foundation


protocol Iterator {
    func getNext() -> Image?
    func hasNext() -> Bool
}

class ImageAlbum {
    private var images = [Image]()
    init () {
        images.append(Image(name: "cat"))
        images.append(Image(name: "dog"))
        images.append(Image(name: "corgi"))
    }
    
    func getSize() -> Int { return images.count}
    func getElem(i: Int) -> Image { return images[i] }
}

class Image {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class ImageIterator: Iterator {
    private var currentIndex: Int = 0
    private let album: ImageAlbum
    
    init(album: ImageAlbum) {
        self.album = album
    }
    
    func getNext() -> Image? {
        let res = hasNext() ? self.album.getElem(i: currentIndex) : nil
        currentIndex += 1
        return res
    }
    
    func hasNext() -> Bool {
        return currentIndex < album.getSize()
    }
}
