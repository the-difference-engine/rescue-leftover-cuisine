# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email: "bob@domain.com", password: "Bob@RLC123", password_confirmation: "Bob@RLC123", username: "Bob@RLC", first_name: "Bob", last_name: "Domain", profile_photo: "/profilePic.PNG", confirmed_at: Time.now, is_admin: true)
User.create(email: "joe@domain.com", password: "Joe@RLC123", password_confirmation: "Joe@RLC123", username: "Joe@RLC",first_name: "Joe", last_name: "Domain", confirmed_at: Time.now)
User.create(email: "vespucci@domain.com", password: "Vespucci@RLC123", password_confirmation: "Vespucci@RLC123", username: "Vespucci@RLC",first_name: "Vespucci", last_name: "Domain", confirmed_at: Time.now, is_suspended: true)

recipe1 = Recipe.create(
  title: "Cauliflower Salad",
  snippet: "Soul-satisfying despite its healthy ingredients, this salad sings",
  ingredients: ["1 head cauliflower", "2 Tbsp olive oil", "1 can oil packaged tuna", "2 tsp Dijon mustard", "Juice of 2 lemons", "Salt and pepper"],
  directions: ["Roast the cauliflower", "Make the dressing", "Toss"],
  difficulty: "EASY",
  duration: 60,
  servings: 6,
  photo: "/recipe-seeds/cauliflowersalad.jpg",
  user_id: 1
)

recipe2 = Recipe.create(
  title: "Easiest Chicken Curry",
  snippet: "Exploding with flavor, but doable on a weeknight",
  ingredients: ["1 chicken, in parts", "3 Tbsp curry powder", "1 cup cream", "1 Tbsp ground cumin", "1 minced red chili", "Vegetables"],
  directions: ["Sear chicken", "Add the vegetables and sautee 10 minutes", "Add curry powder and cumin, toast 2 minutes", "Add cream and 1 cup water", "Simmer 20 minutes"],
  difficulty: "EASY",
  duration: 45,
  servings: 6,
  photo: "/recipe-seeds/chickencurry.jpg",
  user_id: 2,
)

recipe3 = Recipe.create(
  title: "Deviled Eggs",
  snippet: "Everyone's favorite party snack!",
  ingredients: ["12 eggs", "2 Tbsp mustard", "3 Tbsp mayonnaise", "1 tsp paprika", "6 cornichons, diced", "Chives"],
  directions: ["Boil the eggs", "Slice in half an remove yolks", "Mix yolks with other ingredients except chives", "Fill eggs with yolk mixture, garnish with paprika and chives"],
  difficulty: "MEDIUM",
  duration: 30,
  servings: 4,
  photo: "/recipe-seeds/deviledeggs.jpg",
  user_id: 1
)

recipe4 = Recipe.create(
  title: "Eggs Poached in Marinara",
  snippet: "This simple recipe will make you want to wake up early",
  ingredients: ["2 cans tomatoes", "1 onion, diced", "3 cloves garlic, minced", "1/4 cup fresh basil, chiffonade", "1 tsp dried thyme", "6 eggs"],
  directions: ["Sautee onions", "Add garlic", "Add tomatoes and thyme", "Add basil", "Reduce to low and poach eggs in sauce 5 minutes"],
  difficulty: "EASY",
  duration: 30,
  servings: 6,
  photo: "/recipe-seeds/eggspoachedinmarinara.jpg",
  user_id: 2
)

recipe5 = Recipe.create(
  title: "Fettucine with Zucchini",
  snippet: "This pasta is sure to be a hit with vegetarians",
  ingredients: ["1 pound fettucine", "3 zucchini", "1/2 cup parmesan cheese, grated", "1/4 cup olive oil", "3 cloves garlic, sliced"],
  directions: ["Cook the pasta", "Shave the zucchini", "Cook the oil and garlic over medium low until lightly brown and crispy", "Add zuchinni and pasta, plus 1/2 cup pasta water", "Add cheese"],
  difficulty: "MEDIUM",
  duration: 30,
  servings: 6,
  photo: "/recipe-seeds/fettucinezucchini.jpg",
  user_id: 2
)

Recipe.create(
  title: "Lasagna",
  snippet: "Feed the whole family and then some with this satisfying pasta.",
  ingredients: ["1 pound lasagna noodles", "16 oz whole milk ricotta", "2 cans tomatoes", "1/4 cup basil, chiffonade", "1 onion, diced", "1/2 pound each pork, veal, and beef", "1 cup milk", "4 Tbsp flour", "1 cup shredded mozzarella and provolone", "Garlic"],
  directions: ["Make bechamel", "Make sauce and cook for 4 hours", "Cook pasta", "Layer sauce, ricotta, noodles, bechamel, and cheese", "Bake 60 minutes"],
  difficulty: "MEDIUM",
  duration: 300,
  servings: 12,
  photo: "/recipe-seeds/lasagna.jpg",
  user_id: 1
)

Recipe.create(
  title: "Rose Apple Tart",
  snippet: "Make this beautiful pie right now",
  ingredients: ["8 apples", "12 Tbsp butter", "1-1/2 cups flour", "1/2 cup sugar", "1 tsp salt"],
  directions: ["Make pie crust with butter, flour, and half salt", "Slice apples on mandolin", "Toss apples with sugar and remaining salt", "Arrange in crust", "Bake 45 minutes"],
  difficulty: "ADVANCED",
  duration: 90,
  servings: 12,
  photo: "/recipe-seeds/roseappletart.jpg",
  user_id: 2
)

Recipe.create(
  title: "Simple Roast Chicken",
  snippet: "This couldn't be easier or more delicious",
  ingredients: ["1 whole chicken", "2 Tbsp butter", "2 Tbsp peanut oil", "Herbs"],
  directions: ["Stuff herbs under the skin", "Melt butter and oil together", "Rub butter mixture all over chicken", "Roast at 425 degrees"],
  difficulty: "EASY",
  duration: 60,
  servings: 6,
  photo: "/recipe-seeds/simpleroastchicken.jpg",
  user_id: 1
)

Recipe.create(
  title: "Scrambled Eggs with Zucchini",
  snippet: "Enjoy this simple meal with an assertive rye toast",
  ingredients: ["6 eggs", "1 zucchini, diced", "1/4 cup parmesan cheese", "4 Tbsp butter", "1/2 small onion, thinly sliced"],
  directions: ["Cook onion in 2 Tbsp butter", "Add zucchini and cook 2 minutes", "Add 1 Tbsp butter and eggs", "Slowly cook, adding 1 Tbsp butter", "Garnish with cheese"],
  difficulty: "MEDIUM",
  duration: 15,
  servings: 4,
  photo: "/recipe-seeds/scrambledeggszucchini.jpg",
  user_id: 2
)

Recipe.create(
  title: "Tarte Tatin",
  snippet: "The king of French pies, with sticky caramel and beautifully cooked apples",
  ingredients: ["6 small apples", "2 cups sugar", "8 Tbsp butter", "1 sheet puff pastry", "1 tsp salt"],
  directions: ["Cook sugar in pan until caramelized, add half the butter", "Cut apples in half and place in caramel", "Add salt and remaining butter", "Cover with pastry and bake", "Flip upside down onto plate"],
  difficulty: "ADVANCED",
  duration: 90,
  servings: 8,
  photo: "recipe-seeds/tartetatin.jpg",
  user_id: 1
)

breakfast = Tag.create(
 title: "Breakfast"
)

lunch = Tag.create(
 title: "Lunch"
)

dinner = Tag.create(
 title: "Dinner"
)

snack = Tag.create(
 title: "Snack"
)

recipe1.tags = [breakfast, lunch, snack]
recipe2.tags = [lunch, dinner, snack]
recipe3.tags = [breakfast, snack]
recipe4.tags = [snack, lunch, dinner]
recipe5.tags = [breakfast, lunch, dinner, snack]

Comment.create(
  body: "This is a test comment",
  user_id: 1,
  recipe_id: 15
)

Comment.create(
  body: "This is another test comment",
  user_id: 2,
  recipe_id: 20
)
