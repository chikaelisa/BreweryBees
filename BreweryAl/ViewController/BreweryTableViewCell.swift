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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageBrew.layer.cornerRadius = imageBrew.frame.height / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func shareAction(_ sender: Any) {
    }
    
    
    @IBAction func isFavoriteAction(_ sender: Any) {
    }
    
    func configureCell(with breweModel: String) {
        nameBrew.text = breweModel
        if var firstChar = breweModel.first{
            firstChar = Character(firstChar.lowercased())
            imageBrew.image = UIImage(systemName: "\(firstChar).circle")
        }
    }
    
    
}
