//
//  ProductsTableViewController.swift
//  afsd
//
//  Created by Nihar Patel on 02/12/2019.
//  Copyright © 2019 Nihar Patel. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    private var products: [Product]?
    private let identifer = "productCell"
     

    override func viewDidLoad() {
        super.viewDidLoad()
        
        products = [
            Product(name: "Roasted-Sweet Potatoes", cellImageName: "image-cell1", fullscreenImageName: "restaurant-fullscreen1"),
            Product(name: "Butternut Squash Linguine", cellImageName: "image-cell2", fullscreenImageName: "restaurant-fullscreen2"),
            Product(name: "Carrot Soba Noodles", cellImageName: "image-cell3", fullscreenImageName: "restaurant-fullscreen3"),
            Product(name: "Spaghetti Squash Burrito", cellImageName: "image-cell4", fullscreenImageName: "restaurant-fullscreen4"),
            Product(name: "Pinto Posole", cellImageName: "image-cell5", fullscreenImageName:"restaurant-fullscreen5" ),
            Product(name: "Hummus Quasedillas", cellImageName: "image-cell6", fullscreenImageName: "restaurant-fullscreen6")
        ]
        


    }

    
    
           // MARK: - View Transfer
           override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
             if segue.identifier == "showProduct" {
               if let cell = sender as? UITableViewCell,
                 let indexPath = tableView.indexPath(for: cell),
                 let productVC = segue.destination as? ProductViewController {
                 productVC.product = products?[indexPath.row]
               }
             }
           }
}


         // MARK: - UITableViewDataSource
         extension ProductsTableViewController {
             override func tableView(_ tableView: UITableView,
                                     numberOfRowsInSection section: Int) -> Int
             {
                 return products?.count ?? 0
             }

             override func tableView(_ tableView: UITableView,
                                     cellForRowAt indexPath: IndexPath) -> UITableViewCell
             {
                 let cell = tableView.dequeueReusableCell(withIdentifier: identifer, for: indexPath)
                 guard let products = products else { return cell }

                 cell.textLabel?.text = products[indexPath.row].name

                 if let imageName = products[indexPath.row].cellImageName {
                     cell.imageView?.image = UIImage(named: imageName)
                 }

                 return cell;
             }
         }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


