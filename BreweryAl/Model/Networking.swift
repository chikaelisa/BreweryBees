//
//  Api.swift
//  BreweryAl
//
//  Created by Francisca Elisa Carvalho Rosa on 03/03/22.
//

import Foundation
import UIKit

class Networking {
    
    let baseURL: String = "https://bootcamp-mobile-01.eastus.cloudapp.azure.com/breweries"
    
    func fetchTopTen(completion: @escaping ([BreweryDefaultModel]) -> ()) {
        guard let sourceURL = URL(string: "\(baseURL)/topTen")
        else {
            return
        }
        
        URLSession.shared.dataTask(with: sourceURL) {(data, URLResponse, error) in
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let results = try decoder.decode([BreweryDefaultModel].self, from: data)
                  //  print("results", results)
                    completion(results)
                }
                catch {
                    print("error", error)
                    return
                }
            }
        }.resume()
    }
    
}
