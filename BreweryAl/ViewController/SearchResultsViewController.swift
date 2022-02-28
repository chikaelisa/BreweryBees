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
    
    var model = ["Ademir", "Vila Bar", "Stout", "Cabaré", "As mina", "10 Shots"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.searchResultsTableView.reloadData()
        
        searchResultsTableView.delegate = self
        searchResultsTableView.dataSource = self
        
        searchResultsTableView.register(UINib(nibName: BreweryTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: BreweryTableViewCell.identifier)
    }
    
    @IBAction func filterAction(_ sender: Any) {
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

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
