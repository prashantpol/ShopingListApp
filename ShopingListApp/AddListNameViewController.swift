//
//  AddListNameViewController.swift
//  ShopingListApp
//
//  Created by Prashant Pol on 2017-02-21.
//  Copyright © 2017 Polorg. All rights reserved.
//

import UIKit
import RealmSwift

protocol SaveDelegate {
    func saveTask(data: ShoppingListModel)
}


class AddListNameViewController: UIViewController {

    
    var shopingListModels : [ShoppingListModel] = []
      var delegate: SaveDelegate?
    
    @IBOutlet weak var lblListName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let realm = try! Realm()
        shopingListModels =  Array(realm.objects(ShoppingListModel.self))
        print(shopingListModels.count)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btn_SaveList(_ sender: UIButton) {
         let realm = try! Realm()
        
        print("Saving.....")
        let newList=ShoppingListModel()
        newList.listName=lblListName.text!
     
        // Persist your data easily
        try! realm.write {
            //Adding Object Realm DB
            realm.add(newList)
            //Calling delgate function in Tableview for updating List.
            delegate?.saveTask(data: newList)
            //Pop up last activity
            self.navigationController?.popViewController(animated: true)
           // action = ""
        }
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
