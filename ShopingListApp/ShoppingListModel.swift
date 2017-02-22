//
//  ShoppingListModel.swift
//  ShopingListApp
//
//  Created by Prashant Pol on 2017-02-21.
//  Copyright © 2017 Polorg. All rights reserved.
//



import Foundation
import RealmSwift

class ShoppingListModel:Object{
    dynamic var listName: String = ""
    var listItems: List<ListItemModel> = List()
    dynamic var itemsCount: Int {
        get {
            return listItems.count
        }
    }
}

class ListItemModel: Object {
    
    dynamic var name: String = ""
    dynamic var quantity: Int = 0
    
}
