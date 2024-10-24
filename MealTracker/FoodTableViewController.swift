//
//  FoodTableViewController.swift
//  MealTracker
//
//  Created by Wesley Keetch on 10/24/24.
//

import UIKit

class FoodTableViewController: UITableViewController {

  var meals: [Meal] {

    let breakfast = Meal(name: "Breakfast", food: [Food(name: "Cereal", description: "A bowl of sugary breakfast cereal with cold milk"), Food(name: "Oatmeal", description: "A bowl of oats with fresh berries and brown sugar"), Food(name: "Protein shake", description: "1 cup of protein powder and 1 cup of milk")])

    let lunch = Meal(name: "Lunch", food: [Food(name: "Sandwich", description: "A tofu salad sandwich with a side of avocado"), Food(name: "Salad", description: "Leafy greens and kale salad with tempeh"), Food(name: "Pizza", description: "Large slice of Neapolitan pizza")])

    let dinner = Meal(name: "Dinner", food: [Food(name: "BBQ tofu bowl", description: "BBQ tofu strips in a bowl with veggies and rice"), Food(name: "Ramen", description: "Bowl of ramen noodles with veggies and grilled seitan"), Food(name: "Burger", description: "Planted based burger with fries")])

    return [breakfast, lunch, dinner]
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = false

    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem
  }

  // MARK: - Table view data source

  override func numberOfSections(in tableView: UITableView) -> Int {
    // #warning Incomplete implementation, return the number of sections
    return meals.count
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of rows
    return meals[section].food.count
  }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
    let food = meals[indexPath.section].food[indexPath.row]
    cell.textLabel?.text = food.description
    return cell
  }

  override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return meals[section].name
  }
}
