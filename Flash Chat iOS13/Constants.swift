//
//  Constants.swift
//  Flash Chat iOS13
//
//  Created by Ignacio Lopez Jimenez on 17/3/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

//Por convención los type se llaman K
struct K {
    static let appName = "⚡️FlashChat"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lighBlue = "BrandLightBlue"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}


//static let registerSegue = "RegisterToChat" === type property
//let loginsSegue = "LoginToChat" === Instance property

//Los type property estan asociados con los type (K) si inicializar ningun objeto
//Los instance property están asociados con las instancias creadas del type (k = K())
