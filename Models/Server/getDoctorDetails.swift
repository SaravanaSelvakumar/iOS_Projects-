//
//  getDoctorDetails.swift
//  Nucleo
//
//  Created by Apzzo on 07/01/22.
//

import Foundation
import ObjectMapper

class DoctorDetails: NSObject, Mappable {
    var consultingFees = ""
    var firstName = ""
    var lastName = ""
    var speciality = ""
    
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        consultingFees <- map["consulting_fees"]
        firstName <- map["first_name"]
        lastName <- map["last_name"]
        speciality <- map["speciality_name"]
        
    }
}

class DoctorDetailResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var data = DoctorDetails()
    
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        data <- map["data"]
    }
}
