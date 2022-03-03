//
//  BreweryDefaultModel.swift
//  BreweryAl
//
//  Created by Francisca Elisa Carvalho Rosa on 28/02/22.
//

import Foundation
import UIKit

struct BreweryDefaultModel: Decodable, Equatable {
    let id : String?
    let name : String?
    let brewery_type : String?
    let street : String?
    let city : String?
    let state  : String?
    let website_url : String?
    let phone : String?
    let average : Double?
    let size_evaluations: Int?
    let photos : [String]?
    var isFavorite : Bool?
    
    
    init() {
        id = "q"
        name = "Ademir"
        brewery_type = "barzin"
        street = nil
        city = nil
        state  = nil
        website_url = nil
        phone = nil
        average = 4.5
        size_evaluations = nil
        photos = nil
        isFavorite = nil
    }
}

