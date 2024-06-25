//
//  AddFamilyDetails.swift
//  Nucleo
//
//  Created by Apzzo on 07/01/22.
//
import Foundation
import ObjectMapper

class AddFamilyDetails: NSObject, Mappable {
    
    var status = ""
    var message = ""
    var user_id = ""
    var register_id = ""
    
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        user_id <- map["user_id"]
        register_id <- map["register_id"]
    }
}
