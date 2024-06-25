//
//  GetBusinessUserShortDetails.swift
//  Nucleo
//
//  Created by Apzzo on 19/01/22.
//

import Foundation
import ObjectMapper

class BusinessUser: NSObject, Mappable {
    var firstName = ""
    var lastName = ""
    var avatar = ""
    var address1 = ""
    var city = ""
    var zipCode = ""
    var qualification = ""
    var gender = ""
    var doctorId = 0
    var rating = ""
    var language = ""
    var profilePercentage = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        firstName <- map["first_name"]
        lastName <- map["last_name"]
        avatar <- map["avatar"]
        address1 <- map["address1"]
        city <- map["city"]
        zipCode <- map["zip_code"]
        qualification <- map["qualification"]
        gender <- map["gender"]
        doctorId <- map["doctor_id"]
        rating <- map["rating"]
        language <- map["language"]
        profilePercentage <- map["profile_percentage"]
    }
}

class BusinessUserShortDetailResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var data = BusinessUser()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}

class DoctorConsultent: NSObject, Mappable {
    var apptId = ""
    var businessId = ""
    var businessName = ""
    var businessUserId = ""
    var doctorAppointment = [DoctorAppointment]()
    var doctorName = ""
    var isDoctorArrived = 0
    var scheduleId = 0
    var scheduleType = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        apptId <- map["appt_id"]
        businessId <- map["business_id"]
        businessName <- map["business_name"]
        businessUserId <- map["business_user_id"]
        doctorAppointment <- map["doctor_Appointments"]
        doctorName <- map["doctor_name"]
        isDoctorArrived <- map["is_doctor_arrived"]
        scheduleId <- map["schedule_id"]
        scheduleType <- map["schedule_type"]
    }
}

class DoctorConsultentResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var data = [DoctorConsultent]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}

class FollowUpData: NSObject, Mappable {
    var age = ""
    var bloodGroup = ""
    var businessId = ""
    var queueCheckinId = 0
    var clientId = ""
    var clientApptId = ""
    var createdTime = ""
    var expectedTime = ""
    var firstName = ""
    var id = 0
    var followUpId = ""
    var lastName = ""
    var patienName = ""
    var phoneNumber = ""
    var preference = 0
    var scheduleDayId = ""
    var queueStatus = ""
    var waitTime = ""
    var dateOfBirth = ""
    var diagnosis = ""
    var qId = ""
    var type = false
    var apptStatus = ""
    var email = ""
    var apptDate = ""
    var apptTime = ""
    var businessName = ""
    var scheduleType = ""
    var phoneCode = ""
    var admitButton = false
    var otherComments = ""

    required convenience init?(map: Map) {
        self.init()
    }

    var checkinId: String {
        return type ? "\(id)" : "\(queueCheckinId)"
    }

    var status: String {
        return type ? apptStatus : queueStatus
    }

    func mapping(map: Map) {
        age <- map["age"]
        bloodGroup <- map["blood_group"]
        businessId <- map["business_id"]
        queueCheckinId <- map["checkin_id"]
        clientId <- map["client_id"]
        createdTime <- map["created_time"]
        expectedTime <- map["expected_time"]
        firstName <- map["first_name"]
        id <- map["id"]
        followUpId <- map["id"]
        lastName <- map["last_name"]
        patienName <- map["patient_name"]
        phoneNumber <- map["phone_number"]
        preference <- map["preference"]
        scheduleDayId <- map["schedule_day_id"]
        queueStatus <- map["status"]
        dateOfBirth <- map["date_of_birth"]
        qId <- map["q_id"]
        apptStatus <- map["appt_status"]
        clientApptId <- map["client_appt_id"]
        email <- map["email"]
        apptDate <- map["appt_date"]
        apptTime <- map["appt_time"]
        businessName <- map["business_name"]
        waitTime <- map["wait_time"]
        scheduleType <- map["schedule_type"]
        phoneCode <- map["phone_code"]
        otherComments <- map["other_comments"]
    }
}

class FollowUpDataResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var data = [FollowUpData]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}

class BusinessDetail: NSObject, Mappable {
    var id = 0
    var businessId = ""
    var businessUserId = ""
    var cycleTime = ""
    var isActive = ""
    var createdAt = ""
    var updatedAt = ""
    var isDoctorArrived = ""
    var doctorArrivalTime = ""
    var consultingFees = ""
    var doctorExactarrivaltime = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        businessId <- map["business_id"]
        businessUserId <- map["business_user_id"]
        cycleTime <- map["cycle_time"]
        isActive <- map["is_active"]
        createdAt <- map["created_at"]
        updatedAt <- map["updated_at"]
        isDoctorArrived <- map["is_doctor_arrived"]
        doctorArrivalTime <- map["doctor_arrival_time"]
        consultingFees <- map["consulting_fees"]
        doctorExactarrivaltime <- map["doctor_exactarrivaltime"]
    }
}

class BusinessDetailResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var data = [BusinessDetail]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}

class VisitTrendResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var data = [String: Double]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}
