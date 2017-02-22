//
//  ShoppingListModel.swift
//  ShopingListApp
//
//  Created by Prashant Pol on 2017-02-21.
//  Copyright © 2017 Polorg. All rights reserved.
//



import Foundation
import RealmSwift


///declaring models
class ShoppingListModel:Object{
    dynamic var listName: String = ""
    //Declaring List of ListItemModels
    var listItems: List<ListItemModel> = List()
    dynamic var itemsCount: Int {
        get {
            return listItems.count
        }
    }
}

class ListItemModel: Object {
    
    dynamic var name: String = ""
    dynamic var quantity: String = ""
    
}
