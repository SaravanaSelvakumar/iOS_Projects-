//
//  Completed.swift
//  Nucleo
//
//  Created by Apzzo on 24/03/22.
//

import Foundation
import ObjectMapper

class CheckOutCompleted : NSObject,Mappable {
    var nBusinessId = ""
    var nBusinessUserId = ""
    var nScheduleDayId = ""
    var nqId = ""
    var nStatus = ""
    var nSavefor = ""
    var nPreference = ""
    var nScheduleType = ""
    
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        nBusinessId <- map["n_business_id"]
        nBusinessUserId <- map["n_business_user_id"]
        nScheduleDayId <- map["n_schedule_day_id"]
        nqId <- map["n_q_id"]
        nStatus <- map["n_status"]
        nStatus <- map["n_savefor"]
        nPreference <- map["n_preference"]
        nScheduleType <- map["n_schedule_type"]
        
    }
}

class CompletedResponse : NSObject,Mappable {
    var status = ""
    var message = ""
    var data : CheckOutCompleted?
    
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}


