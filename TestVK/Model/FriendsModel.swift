//
//  FriendsModel.swift
//  TestVK
//
//  Created by igor mekkers on 29.04.2022.
//

import Foundation

struct FriendsModel: Decodable {
    let response: Response
}
struct Response: Decodable {
    let items: [Int]
}
