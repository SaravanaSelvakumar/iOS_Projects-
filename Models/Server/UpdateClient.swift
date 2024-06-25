//
//  UpdateClient.swift
//  Nucleo
//
//  Created by Apzzo on 05/01/22.
//


import Foundation
import ObjectMapper

class UpdateClient: NSObject, Mappable {
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
