//
//  Dashboard.swift
//  Nucleo
//
//  Created by Apzzo on 04/01/22.
//

import Foundation
import ObjectMapper

class Dashboard: NSObject, Mappable {
    var firstName = ""
    var lastName = ""
    var reasonForVisit = 0
    var height = ""
    var weight = ""
    var queueType = ""
    var otherComments = 0
    var bmi = ""
    var checkinId = 0
    var temperature = ""
    var bp = ""
    var pulse = ""
    var calculatedBmi = 0
    var qId = ""
    var apptId = 0
    var clientId = 0
    var scheduleDayId = ""
    var preference = 0
    var expectedTime = ""
    var createdTime = ""
    var status = 0
    var isActive = 0
    var apptStartTime = ""
    var apptEndTime = ""
    var businessId = ""
    var businessUserId = 0
    var waitTime = ""
    var travelTime = ""
    var businessName = ""
    var address1 = ""
    var address2 = ""
    var googleId: String?
    
    var waitTimeInMinutes: String {
        return "\(DateUtils.convertToDate(dateString: waitTime, format: .timestampFormat, timeZone: TimeZone.current)?.getFormatedDateTimeString() ?? "")"
    }

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        firstName <- map["first_name"]
        lastName <- map["last_name"]
        reasonForVisit <- map["reason_for_visit"]
        height <- map["height"]
        weight <- map["weight"]
        queueType <- map["queue_type"]
        otherComments <- map["other_comments"]
        bmi <- map["bmi"]
        checkinId <- map["checkin_id"]
        temperature <- map["temperature"]
        bp <- map["bp"]
        pulse <- map["pulse"]
        calculatedBmi <- map["calculated_bmi"]
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
        apptEndTime <- map["appt_end_time"]
        businessId <- map["business_id"]
        businessUserId <- map["business_user_id"]
        waitTime <- map["waitTime"]
        travelTime <- map["travel_time"]
        googleId <- map["google_loc_id"]
        businessName <- map["business_name"]
        address1 <- map["address1"]
        address2 <- map["address2"]
        
    }
}

class DashboardResonse: NSObject, Mappable {
    var status = ""
    var message = ""
    var dashBoardDetails = [Dashboard]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        dashBoardDetails <- map["data"]
    }
}

class Video: NSObject, Mappable {
    var id = ""
    var name = ""
    var value = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        value <- map["value"]
    }
}

class DashboardVideoResonse: NSObject, Mappable {
    var status = ""
    var message = ""
    var dashBoardVideoDetails = Video()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        dashBoardVideoDetails <- map["data"]
    }
}
