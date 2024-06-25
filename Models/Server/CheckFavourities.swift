//
//  CheckFavourities.swift
//  Nucleo
//
//  Created by Apzzo on 07/01/22.
//
import ObjectMapper

class CheckFavourite: NSObject, Mappable {
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
