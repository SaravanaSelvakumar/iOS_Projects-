//
//  Empolyee.swift
//  Nucleo
//
//  Created by Apzzo on 18/02/22.
//

import Foundation
import ObjectMapper

class EmpolyeeList: NSObject, Mappable {
    var id = ""
    var consultingFees = ""
    var status = ""
    var designation = ""
    var phoneCode = ""
    var firstName = ""
    var lastName = ""
    var email = ""
    var emergencyNumber = ""
    var userId = ""
    var professionalId = ""
    var speciality = ""
    var dateOfBirth = ""
    var gender = ""
    var maritalStatus = ""
    var bloodGroup = ""
    var phoneNumber = ""
    var Specialities = ""
    var scheduleType = ""
    var isDoctorArrived = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        consultingFees <- map["consulting_fees"]
        status <- map["status"]
        designation <- map["designation"]
        phoneCode <- map["phone_code"]
        firstName <- map["first_name"]
        lastName <- map["last_name"]
        email <- map["email"]
        emergencyNumber <- map["emergency_number"]
        userId <- map["user_id"]
        professionalId <- map["professional_id"]
        speciality <- map["speciality"]
        dateOfBirth <- map["date_of_birth"]
        gender <- map["gender"]
        maritalStatus <- map["marital_status"]
        bloodGroup <- map["blood_group"]
        phoneNumber <- map["phone_number"]
        Specialities <- map["Specialities"]
        scheduleType <- map["schedule_type"]
        isDoctorArrived <- map["is_doctor_arrived"]
    }
}

class EmpolyeeListResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var countOfRecords = ""
    var Empolyeelistdetails = [EmpolyeeList]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        countOfRecords <- map["countOfRecords"]
        Empolyeelistdetails <- map["data"]
    }
}
