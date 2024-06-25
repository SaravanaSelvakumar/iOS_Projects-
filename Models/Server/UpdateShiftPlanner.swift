//
//  UpdateShiftPlanner.swift
//  Nucleo
//
//  Created by Apzzo on 19/01/22.
//

import Foundation
import ObjectMapper

class UpdateShiftPlanner: NSObject, Mappable {
    var data = ""
    var status = 0
    var message = ""
   
 

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        data <- map["data"]
        status <- map["status"]
        message <- map["message"]
    }
}

