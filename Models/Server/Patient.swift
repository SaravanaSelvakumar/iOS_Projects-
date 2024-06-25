//
//  Patient.swift
//  Nucleo
//
//  Created by Apzzo on 18/02/22.
//

import Foundation
import ObjectMapper

class Patient: NSObject, Mappable {
    var qId = ""
    var parentContact = ""
    var scheduleDayId = ""
    var docName = ""
    var businessUserId = ""
    var id = ""
    var patientName = ""
    var firstName = ""
    var lastName = ""
    var waitTime = ""
    var age = ""
    var phoneNumber = ""
    var clientId = ""
    var expectedTime = ""
    var status = ""
    var actualCheckinTime = ""
    var preference = 0
    var tokenNo = ""
    var businessId = ""
    var maritalStatus = ""
    var gender = ""
    var dob = ""
    var bloodGroup = ""
    var specialities = ""
    var sNo = 0
    var consultingFees = ""
    var designation = ""
    var email = ""
    var isDoctorArrived = ""
    var emergencyNumber = ""
    var phoneCode = ""
    var professionalId = ""
    var scheduleType = ""
    var speciality = ""
    var userId = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        qId <- map["queue_id"]
        parentContact <- map["parentcontact"]
        scheduleDayId <- map["schedule_day_id"]
        docName <- map["doc_name"]
        businessUserId <- map["business_user_id"]
        id <- map["id"]
        patientName <- map["patient_name"]
        firstName <- map["first_name"]
        lastName <- map["last_name"]
        waitTime <- map["waitTime"]
        age <- map["age"]
        phoneNumber <- map["phone_number"]
        clientId <- map["client_id"]
        expectedTime <- map["expected_time"]
        status <- map["status"]
        actualCheckinTime <- map["actual_checkin_time"]
        preference <- map["preference"]
        tokenNo <- map["token_no"]
        businessId <- map["business_id"]
        maritalStatus <- map["marital_status"]
        dob <- map["date_of_birth"]
        gender <- map["gender"]
        bloodGroup <- map["blood_group"]

        specialities <- map["Specialities"]
        consultingFees <- map["consulting_fees"]
        designation <- map["designation"]
        email <- map["email"]
        emergencyNumber <- map["emergency_number"]
        isDoctorArrived <- map["is_doctor_arrived"]
        phoneCode <- map["phone_code"]
        professionalId <- map["professional_id"]
        scheduleType <- map["schedule_type"]
        speciality <- map["speciality"]
        userId <- map["user_id"]
    }
}

class PatientResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var data = [Patient]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}

class EmployeeResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var data = [Patient]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}


class AdminFacility: NSObject, Mappable {
    var facilityCategory = ""
    var facilityCategoryId = 0
    var facilityId = ""
    var facilityName = ""
    var availability = ""
    var available = ""
    var id = 0
    var occupied = ""
    var total = ""
    var sNo = 0

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        facilityCategory <- map["FacilityCategory"]
        facilityCategoryId <- map["FacilityCategoryId"]
        facilityId <- map["FacilityId"]
        facilityName <- map["FacilityName"]
        availability <- map["availability"]
        available <- map["available"]
        id <- map["id"]
        occupied <- map["occupied"]
        total <- map["total"]
    }
}

class FacilityResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var data = [AdminFacility]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}
