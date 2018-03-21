//
//  it-demo.swift
//  patterns
//
//  Created by Rom Dr on 11.03.2018.
//  Copyright © 2018 Rom Dr. All rights reserved.
//

import Foundation

func it_main() {
    let album = ImageAlbum()
    let it = album.createIterator()
    while (it.hasNext()) {
        print(it.getNext()!.name)
    }

}
