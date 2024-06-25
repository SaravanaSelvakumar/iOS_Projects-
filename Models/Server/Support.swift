//
//  Support.swift
//  Nucleo
//
//  Created by Apzzo on 20/01/22.
//
import Foundation
import ObjectMapper

class Support:NSObject , Mappable {
    var name = ""
    var category = ""
    var issueDescription = ""
    var others = ""
    var userId = ""
    var type = ""
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        name <- map["name"]
        category <- map["category"]
        issueDescription <- map["issue_description"]
        others <- map["others"]
        userId <- map["user_id"]
        type <- map["type"]
    }
}


class Status: NSObject, Mappable {
    var status = ""
    var message = ""
    var data : Support?
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}
