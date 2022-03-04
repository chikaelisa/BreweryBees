//
//  ContentsViewController.swift
//  BreweryAl

//
//  Created by Francisca Elisa Carvalho Rosa on 28/02/22.
//

import UIKit

class SearchResultsViewController: UIViewController {
    
    static let identifier = "SearchResultViewController"
    
    @IBOutlet weak var errorMessageView: UIView!
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var sortByLabel: UILabel!
    @IBOutlet weak var searchResultsTableView: UITableView!
    @IBOutlet weak var sortByButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    var model = [BreweryDefaultModel]()
    var networking = Networking()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchResultsTableView.delegate = self
        searchResultsTableView.dataSource = self
        
        searchResultsTableView.register(UINib(nibName: BreweryTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: BreweryTableViewCell.identifier)
        
        networking.fetchTopTen {  [weak self] result in
            DispatchQueue.main.async {
                self?.model = result
                self?.presentCountOrPresentError(model: self?.model ?? [])
                self?.searchResultsTableView.reloadData()
            }
            
        }
        
    }
    @IBAction func filterAction(_ sender: Any) {
    }
    
    func presentCountOrPresentError(model: [BreweryDefaultModel]) {
        switch model.count {
        case 0:
            titleLabel.isHidden = true
            resultsLabel.isHidden = true
            sortByLabel.isHidden = true
            sortByButton.isHidden = true
            searchResultsTableView.isHidden = true
            
            errorMessageView.isHidden = false
            
        case 1:
            resultsLabel.text = "1 resultado"
            
        default:
            resultsLabel.text = "\(model.count) resultados"
        }
    }
}

extension SearchResultsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = searchResultsTableView.dequeueReusableCell(withIdentifier: BreweryTableViewCell.identifier, for: indexPath) as! BreweryTableViewCell
        
        cell.configureCell(with: model[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        70
    }
    
    
}
