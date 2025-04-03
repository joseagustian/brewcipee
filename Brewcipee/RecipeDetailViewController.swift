//
//  RecipeDetailViewController.swift
//  Brewcipee
//
//  Created by Jose Agustian on 01/04/25.
//

import UIKit

class RecipeDetailViewController: UIViewController {

    @IBOutlet weak var recipeNameLabel: UILabel!
    @IBOutlet weak var recipeTypeLabel: UILabel!
    @IBOutlet weak var recipeDescriptionLabel: UILabel!
    @IBOutlet weak var recipeAuthorLabel: UILabel!
    @IBOutlet weak var recipeIngredientsLabel: UILabel!
    @IBOutlet weak var recipeStepsLabel: UILabel!
    @IBOutlet weak var recipeImageView: UIImageView!
    
    let activityIndicator: UIActivityIndicatorView = {
            let spinner = UIActivityIndicatorView(style: .medium)
            spinner.hidesWhenStopped = true
            return spinner
    }()
    
    var recipe: CoffeeRecipeModel? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setRecipeDetail()
        activityIndicator.center = recipeImageView.center
        recipeImageView.addSubview(activityIndicator)
    }

    private func setRecipeDetail() {
        guard let recipe = recipe else { return }
        if let imageUrl = URL(string: recipe.recipePhotoUrl) {
            startLoading()
            URLSession.shared.dataTask(with: imageUrl) { data, _, error in
                guard let data = data, error == nil else { return }
                DispatchQueue.main.async {
                    self.recipeImageView.image = UIImage(data: data)
                    self.stopLoading()
                }
            }.resume()
        } else {
            recipeImageView.image = UIImage(named: "placeholder")
            stopLoading()
        }
        recipeImageView.image = UIImage(named: recipe.recipePhotoUrl)
        recipeNameLabel.text = recipe.recipeName
        recipeTypeLabel.text = "\(recipe.coffeeType) Coffee"
        recipeDescriptionLabel.text = recipe.recipeDescription
        recipeAuthorLabel.text = "Recipe by \(String(describing: recipe.recipeAuthor))"
        recipeStepsLabel.text = recipe.recipeSteps
        
        let ingredientsText = recipe.ingredients.map { ingredient -> String in
            var components: [String] = []
            
            components.append("·")
            
            if let quantity = ingredient.quantity, !quantity.isEmpty {
                components.append(quantity)
            }
            
            if let unit = ingredient.unit, !unit.isEmpty {
                components.append(unit)
            }
            
            components.append(ingredient.ingredientName)
            
            return components.joined(separator: " ")
        }.joined(separator: "\n")
        
        recipeIngredientsLabel.text = ingredientsText
    }
    
    func startLoading() {
            activityIndicator.startAnimating()
        }

    func stopLoading() {
        activityIndicator.stopAnimating()
    }
}
