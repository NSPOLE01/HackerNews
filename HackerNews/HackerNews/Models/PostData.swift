//
//  PostData.swift
//  HackerNews
//
//  Created by Nikhil Polepalli on 7/13/25.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable{
    var id: String{
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?

}
