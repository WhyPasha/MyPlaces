//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Павел on 06.07.2022.
//

import UIKit

class MainViewController: UITableViewController {
    
    //    let restaurantNames = [
    //        "Burger Heroes", "Kitchen",  "Bonsai",  "Дастархан",
    //        "Индокитай", "X.O"
    //        ]
    
    let places = Place.getPlaces()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    //количесвто секций  - убираем так как TableView возвращает всегда 1 секцию
    //    override func numberOfSections(in tableView: UITableView) -> Int {
    //        return 1
    //    }
    // количество строк
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    //    UITableViewCell содержимое и изображение ячейки
    //    as! приведение объкта cell к классу CustomTableViewCell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for : indexPath) as! CustomTableViewCell
        
        cell.NameLable.text = places[indexPath.row].name
        cell .LocationLable.text = places[indexPath.row].location
        cell .TypeLable.text = places[indexPath.row].type
        
        cell.ImageOfPlace.image = UIImage(named: places[indexPath.row].image)
        cell.ImageOfPlace.layer.cornerRadius = cell.ImageOfPlace.frame.size.height / 2
        cell.ImageOfPlace.clipsToBounds = true
        return cell
    }
    @IBAction func cancelAction(_ segue: UIStoryboardSegue) {}
}

