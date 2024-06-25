//
//  TokenList.swift
//  Nucleo
//
//  Created by Apzzo on 21/02/22.
//

import Foundation
import ObjectMapper

class Token: NSObject, Mappable {
    var qID = ""
    var parentContact = ""
    var scheduleDayId = ""
    var docName = ""
    var businessUserId = ""
    var iD = ""
    var patientName = ""
    var firstName = ""
    var lastName = ""
    var waitTime = ""
    var age = ""
    var apprPhoneNumber = ""
    var parentPhoneNumber = ""
    var dob = ""
    var clientId = ""
    var expectedTime = ""
    var tokenStatus = ""
    var apptStatus = ""
    var actualCheckinTime = ""
    var preference = 0
    var tokenNo = 0
    var businessId = ""
    var apptTime = ""
    var scheduleType = ""
    var paymentStatus = ""
    var isAppt = false
    var bloodGroup = ""

    required convenience init?(map: Map) {
        self.init()
    }

    var status: String {
        return isAppt ? apptStatus : tokenStatus
    }

    var phoneNumber: String {
        return apprPhoneNumber.isEmpty ? parentPhoneNumber : apprPhoneNumber
    }

    func mapping(map: Map) {
        qID <- map["q_id"]
        parentContact <- map["parentcontact"]
        scheduleDayId <- map["schedule_day_id"]
        docName <- map["doc_name"]
        businessUserId <- map["business_user_id"]
        iD <- map["id"]
        patientName <- map["patient_name"]
        firstName <- map["first_name"]
        lastName <- map["last_name"]
        waitTime <- map["waitTime"]
        age <- map["age"]
        apprPhoneNumber <- map["phone_number"]
        clientId <- map["client_id"]
        expectedTime <- map["expected_time"]
        tokenStatus <- map["status"]
        apptStatus <- map["appt_status"]
        actualCheckinTime <- map["actual_checkin_time"]
        preference <- map["preference"]
        tokenNo <- map["token_no"]
        businessId <- map["business_id"]
        dob <- map["date_of_birth"]
        apptTime <- map["appt_time"]
        parentPhoneNumber <- map["parent_phone_number"]
        paymentStatus <- map["payment_status"]
        scheduleType <- map["schedule_type"]
        bloodGroup <- map["blood_group"]
        
    }
}

class TokenListResponse: NSObject, Mappable {
    var status = " "
    var message = " "
    var data = [Token]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}
