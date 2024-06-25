//
//  AddToFavourities.swift
//  Nucleo
//
//  Created by Apzzo on 06/01/22.
//

import Foundation
import ObjectMapper

class AddToFavourities: NSObject, Mappable {
    
    var status = ""
    var message = ""
    
    
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
       
         }
}

