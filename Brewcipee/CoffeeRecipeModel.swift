//
//  CoffeeRecipeModel.swift
//  Brewcipee
//
//  Created by Jose Agustian on 01/04/25.
//

struct CoffeeRecipeModel {
    let id: String
    let recipeName: String
    let recipePhotoUrl: String
    let recipeAuthor: String
    let coffeeType: String
    let recipeDescription: String
    let recipeSteps: String
    let ingredients: [CoffeeRecipeIngredients]
}

struct CoffeeRecipeIngredients {
    let ingredientName: String
    let ingredientType: String
    let quantity: String?
    let unit: String?
}

let dummyCoffeeRecipesData: [CoffeeRecipeModel] = [
    CoffeeRecipeModel(
        id: "hot-vanilla-latte",
        recipeName: "Vanilla Latte",
        recipePhotoUrl: "https://www.starbucksathome.com/id/sites/default/files/2021-03/Vanilla%20Latte_LongShadow_Cream_1.png",
        recipeAuthor: "Starbucks",
        coffeeType: "Hot",
        recipeDescription: "Vanilla latte is a coffee beverage made with espresso, steamed milk, and vanilla syrup, creating a sweet and comforting drink.",
        recipeSteps: "Pour a small amount of vanilla syrup into your favorite cup, then add freshly brewed espresso. Heat the milk or a milk alternative until frothy, then slowly pour it into the cup. Stir gently and enjoy!",
        ingredients: [
            CoffeeRecipeIngredients(
                ingredientName: "Espresso",
                ingredientType: "coffee",
                quantity: "1",
                unit: "Shot"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Milk",
                ingredientType: "liquid",
                quantity: "3/4",
                unit: "Cup"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Vanilla Syrup",
                ingredientType: "liquid",
                quantity: "",
                unit: ""
            ),
        ]
    ),
    CoffeeRecipeModel(
        id: "hot-caffe-americano",
        recipeName: "Caffé Americano",
        recipePhotoUrl: "https://bunny-wp-pullzone-8lgzf5kyx3.b-cdn.net/assets/uploads/2023/08/sbx20190617-33269-caffeamericano-onwhite-corelib-srgb-3.png",
        recipeAuthor: "Starbucks",
        coffeeType: "Hot",
        recipeDescription: "A caffè americano is a coffee drink made by diluting an espresso shot with hot water, resulting in a milder, more robust coffee beverage with a similar flavor profile to traditionally brewed coffee.",
        recipeSteps: "Boil the water first, then pour it into your favorite cup. After that, slowly add the brewed espresso into the hot water.",
        ingredients: [
            CoffeeRecipeIngredients(
                ingredientName: "Espresso",
                ingredientType: "coffee",
                quantity: "2",
                unit: "Shot"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Hot Water",
                ingredientType: "liquid",
                quantity: "1 1/4",
                unit: "Cup"
            ),
        ]
    ),
    CoffeeRecipeModel(
        id: "hot-latte-machiato",
        recipeName: "Latte Machiato",
        recipePhotoUrl: "https://www.starbucksathome.com/id/sites/default/files/2021-05/10032021_LATTE_MACCHIATO_LS-min.png",
        recipeAuthor: "Starbucks",
        coffeeType: "Hot",
        recipeDescription: "A latte macchiato, meaning marked milk in Italian, is an espresso-based coffee drink characterized by a layer of steamed milk, followed by a shot of espresso, and topped with a layer of foam, creating distinct layers in the glass.",
        recipeSteps: "Brew a shot of espresso first. Heat the milk or a milk alternative until frothy, then pour it into your favorite cup. Slowly pour the espresso into the center of the cup. Do it carefully to achieve the perfect barista-style coffee dot!",
        ingredients: [
            CoffeeRecipeIngredients(
                ingredientName: "Espresso",
                ingredientType: "coffee",
                quantity: "1",
                unit: "Shot"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Milk",
                ingredientType: "liquid",
                quantity: "3/4",
                unit: "Cup"
            ),
        ]
    ),
    CoffeeRecipeModel(
        id: "hot-cappuccino",
        recipeName: "Cappuccino",
        recipePhotoUrl: "https://bunny-wp-pullzone-8lgzf5kyx3.b-cdn.net/assets/uploads/2023/08/sbx20190617-33379-cappuccino-onwhite-corelib-srgb.png",
        recipeAuthor: "Starbucks",
        coffeeType: "Hot",
        recipeDescription: "Cappuccino is a rich and creamy espresso-based drink made with equal parts of espresso, steamed milk, and frothy milk foam, delivering a perfect balance of bold coffee flavor and velvety texture.",
        recipeSteps: "Brew a shot of espresso and pour it into your favorite cup. Heat the milk or a milk alternative until frothy, then add it to the cup. To make a special cappuccino, aim for a 50:50 ratio of milk to foam—the more foam, the better. For a luxurious touch, sprinkle some grated cinnamon and chocolate.",
        ingredients: [
            CoffeeRecipeIngredients(
                ingredientName: "Espresso",
                ingredientType: "coffee",
                quantity: "1",
                unit: "Shot"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Milk",
                ingredientType: "liquid",
                quantity: "158",
                unit: "ml"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Chocolate Powder",
                ingredientType: "powder",
                quantity: "",
                unit: ""
            ),
        ]
    ),
    CoffeeRecipeModel(
        id: "hot-golden-turmeric-latte",
        recipeName: "Golden Turmeric Latte",
        recipePhotoUrl: "https://www.starbucksathome.com/id/sites/default/files/styles/rdp_banner_image/public/2021-05/10032021_GoldenTurmericLatte_CS-min.png",
        recipeAuthor: "Starbucks",
        coffeeType: "Hot",
        recipeDescription: "A Golden Turmeric Latte, also known as Golden Milk or Turmeric Milk, is a warm, creamy, and spiced beverage made with turmeric, milk (dairy or non-dairy), and other spices like ginger, cinnamon, and black pepper, often enjoyed for its potential health benefits.",
        recipeSteps: "Brew a shot of espresso and pour it into a cup. Add vanilla essence to enhance the aroma. Heat the milk or a milk alternative until smooth and frothy, then mix in your choice of spices. Next, pour the spiced milk into the cup with the espresso. For a luxurious finishing touch, sprinkle a bit of cinnamon powder on top.",
        ingredients: [
            CoffeeRecipeIngredients(
                ingredientName: "Espresso",
                ingredientType: "coffee",
                quantity: "1",
                unit: "Shot"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Oat Milk",
                ingredientType: "liquid",
                quantity: "1",
                unit: "cup"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Vanilla Essence",
                ingredientType: "liquid",
                quantity: "1",
                unit: "Teaspoons"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Ground Turmeric",
                ingredientType: "spices",
                quantity: "1/2",
                unit: "Teaspoons"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Ground Ginger",
                ingredientType: "spices",
                quantity: "1/4",
                unit: "Teaspoons"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Ground Cinnamon",
                ingredientType: "spices",
                quantity: "1/4",
                unit: "Teaspoons"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Black Pepper",
                ingredientType: "spices",
                quantity: "",
                unit: ""
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Honey (Optional)",
                ingredientType: "liquid",
                quantity: "",
                unit: ""
            ),
        ]
    ),
    CoffeeRecipeModel(
        id: "hot-spiced-flat-white",
        recipeName: "Spiced Flat White",
        recipePhotoUrl: "https://www.starbucksathome.com/id/sites/default/files/styles/rdp_banner_image/public/2021-05/10032021_SpicedExpresso_CS-min.png",
        recipeAuthor: "Starbucks",
        coffeeType: "Hot",
        recipeDescription: "Warm and aromatic coffee drink that combines the smooth, velvety texture of a flat white with the rich flavors of spices. Made with two shots of espresso, steamed milk, and a carefully selected blend of spices such as cinnamon, nutmeg, or cardamom, this drink offers a perfect balance of bold coffee taste and subtle warmth from the spices. The milk is frothed to a silky microfoam, creating a creamy consistency without excessive foam, allowing the espresso and spices to shine through. Ideal for those who enjoy a comforting yet refined coffee experience.",
        recipeSteps: "Brew two shots of espresso, then pour them into a mug. Add the spices and stir well. Froth the warmed milk or dairy alternative, then pour it into the mug until it’s almost full. Next, focus on the center of the mug and pour a little faster until the foam flows out and creates a dot in the middle—that’s how the experts do it.",
        ingredients: [
            CoffeeRecipeIngredients(
                ingredientName: "Espresso",
                ingredientType: "coffee",
                quantity: "2",
                unit: "Shot"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Milk",
                ingredientType: "liquid",
                quantity: "3/4",
                unit: "cup"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Ground Cinnamon",
                ingredientType: "spices",
                quantity: "1",
                unit: "pinch"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Ground Nutmeg",
                ingredientType: "spices",
                quantity: "1",
                unit: "pinch"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Ground Ginger",
                ingredientType: "spices",
                quantity: "1",
                unit: "pinch"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Ground Pepper",
                ingredientType: "spices",
                quantity: "1",
                unit: "pinch"
            ),
        ]
    ),
    CoffeeRecipeModel(
        id: "hot-honey-almond-flat-white",
        recipeName: "Honey Almond Flat White",
        recipePhotoUrl: "https://www.starbucksathome.com/id/sites/default/files/styles/rdp_banner_image/public/2024-09/STARBUCKS-SBU-SBUX_Dairy_Alt_2022-Website_Recipes-Still_HoneyAlmondFW_CS-1842x1542.png",
        recipeAuthor: "Starbucks",
        coffeeType: "Hot",
        recipeDescription: "The natural sweetness of honey is a delicious addition to any coffee drink – and when you make this plant-based coffee recipe with almond beverage, you’re definitely in for a tasty treat. It’s the flat white you know, with your favourite Starbucks®, just without any dairy. Get ready for a coffee experience like no other.",
        recipeSteps: "Brew two shots of espresso and pour them into your favorite mug. Stir in 2 teaspoons of honey, letting the sweetness blend with the rich espresso. Heat 180ml of almond beverage until warm, then froth it with a handheld frother. Gently pour the frothed almond beverage into the mug, creating a smooth, golden drink with a delicate layer of froth on top.",
        ingredients: [
            CoffeeRecipeIngredients(
                ingredientName: "Espresso",
                ingredientType: "coffee",
                quantity: "2",
                unit: "Shot"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Milk",
                ingredientType: "liquid",
                quantity: "2",
                unit: "Tablespoons"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Almond Beverage",
                ingredientType: "liquid",
                quantity: "180",
                unit: "ml"
            ),
        ]
    ),
    CoffeeRecipeModel(
        id: "iced-espresso-with-mint",
        recipeName: "Sparkling Espresso with Mint",
        recipePhotoUrl: "https://www.starbucksathome.com/id/sites/default/files/styles/rdp_banner_image/public/2021-03/18-SparklingEspressoWithMint_ContactShadow_Green_3.png",
        recipeAuthor: "Starbucks",
        coffeeType: "Iced",
        recipeDescription: "Iced coffee comes to life with a sparkling twist. It’s easy to make, and even easier to drink.",
        recipeSteps: "Brew one shot of espresso and fill a glass with ice. Add the syrup, mint, and coffee to a cocktail shaker. Make sure the shaker is full of ice, then shake to your heart’s content. If you don’t have a cocktail shaker, you can pour the syrup, mint, and coffee directly into a jug and stir it well. Fill your glass ¾ of the way up with ice. Strain the mixture from the cocktail shaker into the glass filled with ice. Top it up with sparkling water and add a sprig of mint. A bit of fizz to go with that icy freshness, with mint for the aesthetic.",
        ingredients: [
            CoffeeRecipeIngredients(
                ingredientName: "Espresso",
                ingredientType: "coffee",
                quantity: "1",
                unit: "Shot"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Simple Syrup",
                ingredientType: "liquid",
                quantity: "2",
                unit: "Tablespoons"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Mint Leaves",
                ingredientType: "herb",
                quantity: "8",
                unit: ""
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Sparkling Water",
                ingredientType: "liquid",
                quantity: "1/2",
                unit: "Cup"
            ),
        ]
    ),
    CoffeeRecipeModel(
        id: "hot-roasted-almond-coffee",
        recipeName: "Roasted Almond Coffee",
        recipePhotoUrl: "https://www.starbucksathome.com/gb/sites/default/files/styles/overview_banner_image/public/2023-02/STARBUCKS-SBU-SBUX_Nespresso%20Flavours_2023-Website_Recipes-Still_IcedAlmondLatte_CS-1842x1542_0.png",
        recipeAuthor: "NESCAFÉ",
        coffeeType: "Hot",
        recipeDescription: "Roasted almond coffee is light in flavour, low in calories and high in vitamins. With plant-based ingredients, you get the same luscious texture and creamy sensation. Kick the flavours up a notch with some roasted almonds sprinkled on top!",
        recipeSteps: "Mix instant coffee with hot water (~80°C, just before boiling) to save energy. Lightly roast sliced almonds in a saucepan over medium heat for about 45 seconds, being careful not to burn them. Warm the almond dairy alternative to 65-70°C, then pour it into a jug with half a teaspoon of almond (or vanilla) extract and sweeten if desired. Whisk until frothy, preferably with an electric whisk. Pour into a cup, leaving the foam on top, and sprinkle with roasted almonds. Enjoy your homemade roasted almond coffee!",
        ingredients: [
            CoffeeRecipeIngredients(
                ingredientName: "NESCAFÉ Instant Coffee",
                ingredientType: "coffee",
                quantity: "1 - 2",
                unit: "Teaspoons"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Hot Water",
                ingredientType: "liquid",
                quantity: "30",
                unit: "ml"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Unsweteened Almond Dairy",
                ingredientType: "liquid",
                quantity: "170",
                unit: "ml"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Almond/Vanilla Extract",
                ingredientType: "liquid",
                quantity: "1/2",
                unit: "Teaspoons"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Sliced Almonds",
                ingredientType: "peanut",
                quantity: "4",
                unit: "grams"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Sweteener (Optional)",
                ingredientType: "powder",
                quantity: "",
                unit: ""
            ),
        ]
    ),
    CoffeeRecipeModel(
        id: "hot-cappuccino",
        recipeName: "Iced Coconut Latte",
        recipePhotoUrl: "https://www.starbucksathome.com/gb/sites/default/files/2022-08/Iced%20Coconut%20KV_Short%20Shadow.png",
        recipeAuthor: "Starbucks",
        coffeeType: "Iced",
        recipeDescription: "A chilled tropical take on the golden latte, sweetened with cane sugar.",
        recipeSteps: "Add 1 tablespoon of cane sugar syrup to the coffee mixture and stir well. Fill a mason jar with ice, then pour 150 ml of a coconut-based dairy alternative into the jar. Next, pour the coffee mixture into the mason jar, close it tightly, and shake well. Pour the drink into a 300 ml glass and serve.",
        ingredients: [
            CoffeeRecipeIngredients(
                ingredientName: "NESCAFÉ Gold",
                ingredientType: "coffee",
                quantity: "2",
                unit: "Teaspoons"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Ice",
                ingredientType: "ice",
                quantity: "8",
                unit: "cubes"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Hot Water",
                ingredientType: "liquid",
                quantity: "60",
                unit: "ml"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Coconut Dairy",
                ingredientType: "liquid",
                quantity: "150",
                unit: "ml"
            ),
            CoffeeRecipeIngredients(
                ingredientName: "Cane Sugar Syrup",
                ingredientType: "liquid",
                quantity: "1",
                unit: "Tablepoons"
            ),
        ]
    ),
]
