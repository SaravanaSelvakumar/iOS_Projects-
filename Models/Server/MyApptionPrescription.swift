//
//  MyApptionPrescription.swift
//  Nucleo
//
//  Created by Apzzo on 21/02/22.
//

import Foundation
import ObjectMapper


class MyAppointmentPrescription: NSObject, Mappable {
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


class MyAppointmentPrescriptionResponse: NSObject, Mappable {
    var data = [MyAppointmentPrescription]()
   
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        data <- map["data"]
    }
}

