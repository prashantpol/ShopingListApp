//
//  AddItemsViewController.swift
//  ShopingListApp
//
//  Created by Prashant Pol on 2017-02-21.
//  Copyright © 2017 Polorg. All rights reserved.
//

import UIKit

protocol SaveItemsDelegate {
    func saveTask(data: ShoppingListModel)
}

class AddItemsViewController: UIViewController {

    @IBOutlet weak var txtItemName: UITextField!
    @IBOutlet weak var txtQuantity: UITextField!
    var shoppinListModel :ShoppingListModel = ShoppingListModel()
    
    var delegate: SaveDelegate?
    
    @IBAction func btn_SaveItem(_ sender: UIButton) {
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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
