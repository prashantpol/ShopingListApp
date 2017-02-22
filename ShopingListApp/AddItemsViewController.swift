//
//  AddItemsViewController.swift
//  ShopingListApp
//
//  Created by Prashant Pol on 2017-02-21.
//  Copyright © 2017 Polorg. All rights reserved.
//

import UIKit
import RealmSwift

protocol SaveItemsDelegate {
    func saveTask(data: ShoppingListModel)
}

class AddItemsViewController: UIViewController {

    @IBOutlet weak var txtItemName: UITextField!
    @IBOutlet weak var txtQuantity: UITextField!
    var shoppinListModel :ShoppingListModel = ShoppingListModel()
    
    var delegate: SaveDelegate?
    
    
    //Button to save List Items of particular LIST
    @IBAction func btn_SaveItem(_ sender: UIButton) {
        let realm = try! Realm()

        try! realm.write {
            let item = ListItemModel()
            
            item.name=txtItemName.text!
            var qnt = txtQuantity.text!
            item.quantity=txtQuantity.text!
            
             shoppinListModel.listItems.append(item)
            
            //Updating Object Realm DB
            
            //Calling delgate function in Tableview for updating List.
            delegate?.saveTask(data: shoppinListModel)
            //Pop up last activity
            self.navigationController?.popViewController(animated: true)
            
            print(shoppinListModel)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       print( shoppinListModel.listName)
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
