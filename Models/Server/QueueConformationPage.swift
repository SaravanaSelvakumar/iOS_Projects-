//
//  QueueConformationPage.swift
//  Nucleo
//
//  Created by Apzzo on 06/01/22.
//

import ObjectMapper

class QueueConformationPage: NSObject, Mappable {
    var qId = ""
    var apptId = ""
    var clientId = ""
    var scheduleDayId = ""
    var preference = ""
    var expectedTime = ""
    var createdTime = ""
    var status = ""
    var isActive = ""
    var apptStartTime = ""
    var businessId = ""
    var waitTime = ""
    var googleId = ""
    var businessUserId = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        qId <- map["q_id"]
        apptId <- map["appt_id"]
        clientId <- map["client_id"]
        scheduleDayId <- map["schedule_day_id"]
        preference <- map["preference"]
        expectedTime <- map["expected_time"]
        createdTime <- map["created_time"]
        status <- map["status"]
        isActive <- map["is_active"]
        apptStartTime <- map["appt_start_time"]
        businessId <- map["business_id"]
        waitTime <- map["waitTime"]
        googleId <- map["google_loc_id"]
        businessUserId <- map["business_user_id"]
    }
}

class QueueConformation: NSObject, Mappable {
    var status = ""
    var message = ""
    var data = [QueueConformationPage]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}

class EmergencyQueueResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var data = [EmergencyQueue]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}

class EmergencyQueue: NSObject, Mappable {
    var qId = ""
    var message = ""
    var status = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        qId <- map["qId"]
        message <- map["message"]
        status <- map["status"]
    }
}
