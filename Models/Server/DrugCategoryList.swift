//
//  DrugCategoryList.swift
//  Nucleo
//
//  Created by Apzzo on 07/01/22.
//

import Foundation
import ObjectMapper

class DrugCategory: NSObject, Mappable {
    var id = ""
    var drugCategory = ""
    
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        drugCategory <- map["drug_category"]
    
       
    }
}


class DrugCategoryResponse: NSObject, Mappable {
    var status = ""
    var countOfRecords = 0
    var data = [DrugCategory]()
    var message = ""
 

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        countOfRecords <- map["countOfRecords"]
        data <- map["data"]
        message <- map["message"]
    }
}
