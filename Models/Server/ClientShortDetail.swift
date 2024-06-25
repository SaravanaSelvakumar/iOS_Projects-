//
//  ClientShortDetail.swift
//  Nucleo
//
//  Created by Apzzo on 06/01/22.
//

import Foundation
import ObjectMapper

class ClientShort: NSObject, Mappable {
    var firstName = ""
    var lastName = ""
    var patientId = 0
    var bloodGroup = ""
    var profilePercentage = ""
    var age = ""
    var avatar = ""
  

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        firstName <- map["first_name"]
        lastName <- map["last_name"]
        patientId <- map["patient_id"]
        bloodGroup <- map["blood_group"]
        profilePercentage <- map["profile_percentage"]
        age <- map["age"]
        avatar <- map["avatar"]
         }
}


class ClientShortDetails: NSObject, Mappable {
    var status = ""
    var message = ""
    var data = [ClientShort] ()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status  <- map["status"]
        message    <- map["message"]
        data    <- map["data"]
    }
}
