//
//  RecipeTableViewCell.swift
//  Brewcipee
//
//  Created by Jose Agustian on 01/04/25.
//

import UIKit

class RecipeTableViewCell: UITableViewCell {

    @IBOutlet weak var recipeNameLabel: UILabel!
    @IBOutlet weak var recipeTypeLabel: UILabel!
    @IBOutlet weak var ingredientCountLabel: UILabel!
    @IBOutlet weak var recipeImageView: UIImageView!
    
    let activityIndicator: UIActivityIndicatorView = {
            let spinner = UIActivityIndicatorView(style: .medium)
            spinner.hidesWhenStopped = true
            return spinner
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        activityIndicator.center = recipeImageView.center
        recipeImageView.addSubview(activityIndicator)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func startLoading() {
            activityIndicator.startAnimating()
        }

    func stopLoading() {
        activityIndicator.stopAnimating()
    }
}
