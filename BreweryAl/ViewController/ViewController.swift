//
//  ViewController.swift
//  BreweryAl
//
//  Created by Francisca Elisa Carvalho Rosa on 28/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var containerSearchTableView: UIView!
    var viewSOS: SearchResultsViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.searchTextField.backgroundColor = .white
        searchBar.layer.cornerRadius = 8
        searchBar.clipsToBounds = true
 
    }
}
