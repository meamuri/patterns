//
//  obs-app.swift
//  patterns
//
//  Created by Rom Dr on 10.03.2018.
//  Copyright © 2018 Rom Dr. All rights reserved.
//

import Foundation

func obs_main() {
    let insta = SocialNetwork()
    let some_user = InstaUser(id: 1, username: "MaggiMan")
    let octo = InstaUser(id: 2, username: "Octoposus")
    insta.addSubscriber(s: some_user)
    insta.addSubscriber(s: octo)
    
    insta.addPictures(pics: ["citty", "cat", "some_cute_cats"])
    insta.removeSubscriber(s: some_user)
    insta.addPictures(pics: ["corgi"])
}
