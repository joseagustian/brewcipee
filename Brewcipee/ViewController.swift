//
//  ViewController.swift
//  Brewcipee
//
//  Created by Jose Agustian on 01/04/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coffeeRecipeTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        coffeeRecipeTableView.dataSource = self
        coffeeRecipeTableView.delegate = self
        
        coffeeRecipeTableView.register(
            UINib(nibName: "RecipeTableViewCell", bundle: nil),
            forCellReuseIdentifier: "RecipeCell"
        )
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
      ) -> Int {
          return dummyCoffeeRecipesData.count
      }
     
      func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
      ) -> UITableViewCell {
     
        if let cell = tableView.dequeueReusableCell(
          withIdentifier: "RecipeCell",
          for: indexPath
        ) as? RecipeTableViewCell {
     
          let recipes = dummyCoffeeRecipesData[indexPath.row]
            if let imageUrl = URL(string: recipes.recipePhotoUrl) {
                        cell.startLoading()
                        URLSession.shared.dataTask(with: imageUrl) { data, _, error in
                            guard let data = data, error == nil else { return }
                            DispatchQueue.main.async {
                                cell.recipeImageView.image = UIImage(data: data)
                                cell.stopLoading()
                            }
                        }.resume()
                    } else {
                        cell.recipeImageView.image = UIImage(named: "placeholder")
                        cell.stopLoading()
                    }
            
            cell.recipeImageView.image = UIImage(named: recipes.recipePhotoUrl)
            cell.recipeNameLabel.text = recipes.recipeName
            cell.recipeTypeLabel.text = "\(recipes.coffeeType) Coffee"
            cell.ingredientCountLabel.text = "\(recipes.ingredients.count) Ingredients"
          return cell
        } else {
          return UITableViewCell()
        }
      }
}

extension ViewController: UITableViewDelegate {
  func tableView(
    _ tableView: UITableView,
    didSelectRowAt indexPath: IndexPath
  ) {
    performSegue(
        withIdentifier: "moveToRecipeDetail",
        sender: dummyCoffeeRecipesData[indexPath.row]
    )
  }
    

    override func prepare(
      for segue: UIStoryboardSegue,
      sender: Any?
    ) {
      if segue.identifier == "moveToRecipeDetail" {
          if let detaiViewController = segue.destination as? RecipeDetailViewController {
          detaiViewController.recipe = sender as? CoffeeRecipeModel
        }
      }
    }
}
