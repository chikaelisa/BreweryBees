//
//  BreweryTableViewCell.swift
//  BreweryAl
//
//  Created by Francisca Elisa Carvalho Rosa on 28/02/22.
//

import UIKit

class BreweryTableViewCell: UITableViewCell {
    
    static let identifier = "BreweryTableViewCell"
    
    // let model = ["Ademir", "Vila Bar", "Stout", "Cabaré", "As mina", "10 Shots"]
    
    @IBOutlet weak var imageBrew: UIImageView!
    @IBOutlet weak var nameBrew: UILabel!
    @IBOutlet weak var rateBrew: UILabel!
    @IBOutlet weak var typeBrew: UILabel!
    @IBOutlet weak var distanceBrew: UILabel!
    @IBOutlet weak var isFavoriteButton: UIButton!
    @IBOutlet weak var principalView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageBrew.layer.cornerRadius = imageBrew.frame.height / 2
        principalView.layer.cornerRadius = 16
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    @IBAction func shareAction(_ sender: Any) {
    }
    
    
    @IBAction func isFavoriteAction(_ sender: Any) {
    
    }
    
    func configureCell(with breweModel: BreweryDefaultModel) {
        nameBrew.text = breweModel.name
        if var firstChar = breweModel.name?.first{
            firstChar = Character(firstChar.lowercased())
            imageBrew.image = UIImage(systemName: "\(firstChar).circle")
        }
        typeBrew.text = breweModel.brewery_type
        guard let rating = breweModel.average else { return }
        rateBrew.text = "\(String(describing: rating))"
    }
    
    
}
