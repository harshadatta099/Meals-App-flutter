import 'package:flutter/material.dart';

import '../models/category.dart';
import '../models/meal.dart';

const availableCategories = [
  CategoryM(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
  ),
  CategoryM(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
  ),
  CategoryM(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  CategoryM(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
  ),
  CategoryM(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
  ),
  CategoryM(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
  ),
  CategoryM(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  CategoryM(
    id: 'c8',
    title: 'Asian',
    color: Colors.indigo,
  ),
  CategoryM(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  CategoryM(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    title: 'Spaghetti with Tomato Sauce',
    imageUrl:
        'https://www.giallozafferano.com/images/228-22832/spaghetti-with-tomato-sauce_1200x800.jpg',
    categories: ['c1', 'c2'],
    ingredients: ['Pasta', 'Tomato Sauce', 'Garlic', 'Onion'],
    steps: [
      'Boil water and cook pasta according to package instructions.',
      'In a separate pan, heat tomato sauce with garlic and onion.',
      'Serve the cooked pasta with the tomato sauce on top.',
    ],
    duration: 30,
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    title: 'Grilled Chicken Salad',
    imageUrl:
        'https://c.ndtvimg.com/2020-09/bkj71ito_chicken-salad_625x300_05_September_20.jpg',
    categories: ['c2', 'c3'],
    ingredients: ['Chicken', 'Lettuce', 'Tomato', 'Cucumber'],
    steps: [
      'Grill the chicken until cooked.',
      'Chop lettuce, tomato, and cucumber.',
      'Slice the grilled chicken and add it to the salad.',
      'Toss everything together and serve.',
    ],
    duration: 45,
    complexity: Complexity.Simple,
    affordability: Affordability.Pricey,
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm3',
    title: 'Cheeseburger',
    imageUrl:
        'https://www.daysoftheyear.com/wp-content/uploads/double-cheeseburger-day.jpg',
    categories: ['c4'],
    ingredients: ['Bun', 'Beef Patty', 'Cheese', 'Lettuce', 'Tomato'],
    steps: [
      'Cook the beef patty on a grill.',
      'Toast the bun.',
      'Assemble the burger by placing the patty, cheese, lettuce, and tomato between the bun halves.',
      'Serve with your favorite condiments and side dishes.',
    ],
    duration: 20,
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm4',
    title: 'Mushroom Risotto',
    imageUrl:
        'https://cdn.loveandlemons.com/wp-content/uploads/2023/01/mushroom-risotto.jpg',
    categories: ['c5'],
    ingredients: [
      'Arborio Rice',
      'Mushrooms',
      'Onion',
      'Garlic',
      'Parmesan Cheese'
    ],
    steps: [
      'In a pan, sauté onion and garlic.',
      'Add the Arborio rice and stir until coated with oil.',
      'Gradually add vegetable broth and stir until absorbed.',
      'Add mushrooms and continue stirring until the rice is cooked and creamy.',
      'Stir in grated Parmesan cheese and serve hot.',
    ],
    duration: 40,
    complexity: Complexity.Challenging,
    affordability: Affordability.Pricey,
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    title: 'Hawaiian Pizza',
    imageUrl:
        'https://img.kidspot.com.au/pZnR2nZu/kk/2015/03/hawaiian-pizza-recipe-605894-2.jpg',
    categories: ['c6', 'c2'],
    ingredients: ['Pizza Dough', 'Ham', 'Pineapple', 'Cheese'],
    steps: [
      'Preheat the oven and roll out the pizza dough.',
      'Spread tomato sauce on the dough.',
      'Top with ham, pineapple, and cheese.',
      'Bake in the oven until the crust is golden and the cheese is melted.',
      'Slice and serve hot.',
    ],
    duration: 25,
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm6',
    title: 'Vegan Pad Thai',
    imageUrl:
        'https://minimalistbaker.com/wp-content/uploads/2019/01/Easy-Vegan-Pad-Thai-SQUARE.jpg',
    categories: ['c7'],
    ingredients: ['Rice Noodles', 'Tofu', 'Bean Sprouts', 'Carrots', 'Peanuts'],
    steps: [
      'Soak rice noodles in warm water until softened.',
      'In a pan, cook tofu, bean sprouts, carrots, and rice noodles.',
      'Add vegan pad Thai sauce and stir-fry until heated through.',
      'Serve garnished with crushed peanuts.',
    ],
    duration: 35,
    complexity: Complexity.Challenging,
    affordability: Affordability.Affordable,
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm7',
    title: 'Chocolate Cake',
    imageUrl:
        'https://www.labonelfinebaking.shop/wp-content/uploads/2021/02/CLASSIC-CHOCOLATE-CAKE.jpg',
    categories: ['c8'],
    ingredients: ['Flour', 'Cocoa Powder', 'Sugar', 'Eggs', 'Butter'],
    steps: [
      'Mix flour, cocoa powder, sugar, eggs, and butter in a bowl.',
      'Pour the batter into a greased cake pan.',
      'Bake in the oven until a toothpick comes out clean.',
      'Let the cake cool, then frost with chocolate ganache or your preferred frosting.',
    ],
    duration: 60,
    complexity: Complexity.Hard,
    affordability: Affordability.Affordable,
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    title: 'Salmon with Asparagus',
    imageUrl:
        'https://www.eatwell101.com/wp-content/uploads/2019/06/Garlic-Butter-Salmon-with-Lemon-Asparagus-Skillet.jpg',
    categories: ['c9'],
    ingredients: ['Salmon Fillet', 'Asparagus', 'Lemon', 'Olive Oil'],
    steps: [
      'Season salmon fillet with salt and pepper.',
      'Grill the salmon and asparagus until cooked.',
      'Drizzle with lemon juice and olive oil.',
      'Serve hot with a side of your choice.',
    ],
    duration: 30,
    complexity: Complexity.Simple,
    affordability: Affordability.Pricey,
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    title: 'Stuffed Bell Peppers',
    imageUrl:
        'https://images-gmi-pmc.edge-generalmills.com/3512d6fb-41d3-41e7-a66d-f234a5942b6a.jpg',
    categories: ['c5', 'c10', 'c2'],
    ingredients: ['Bell Peppers', 'Ground Beef', 'Rice', 'Tomato Sauce'],
    steps: [
      'Preheat the oven and prepare the bell peppers.',
      'Cook the ground beef and rice separately.',
      'Mix the cooked beef, rice, and tomato sauce together.',
      'Stuff the bell peppers with the mixture.',
      'Bake in the oven until the peppers are tender.',
      'Serve hot.',
    ],
    duration: 50,
    complexity: Complexity.Challenging,
    affordability: Affordability.Affordable,
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm10',
    title: 'Mango Salsa Chicken',
    imageUrl:
        'https://healthyfitnessmeals.com/wp-content/uploads/2018/04/grilled-chicken-with-mango-avocado-salsa-3-SQUARE.jpg',
    categories: ['c3', 'c9'],
    ingredients: ['Chicken Breast', 'Mango', 'Red Bell Pepper', 'Red Onion'],
    steps: [
      'Season the chicken breast and grill until cooked.',
      'Dice the mango, red bell pepper, and red onion.',
      'Mix the diced ingredients together to make the mango salsa.',
      'Top the grilled chicken with the mango salsa.',
      'Serve hot with your choice of side dishes.',
    ],
    duration: 35,
    complexity: Complexity.Simple,
    affordability: Affordability.Pricey,
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
];
