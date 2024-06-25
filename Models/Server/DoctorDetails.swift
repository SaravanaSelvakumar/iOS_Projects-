//
//  DoctorDetails.swift
//  Nucleo
//
//  Created by Apzzo on 02/03/22.
//

import Foundation
import ObjectMapper

class Doctor: NSObject, Mappable {
    var firstName = ""
    var lastName = ""
    var age = ""
    var profilePic = ""
    var dob = ""
    var address1 = ""
    var city = ""
    var country = ""
    var zipCode = ""
    var phoneNumber = ""
    var email = ""
    var state = ""
    var gender = ""
    var bloodGroup = ""
    var nationality = ""
    var language = ""
    var medicalLicenceId = ""
    var expiryDate = ""
    var userType = ""
    var workingHours = ""
    var workingDays = ""
    var speciality = ""
    var educationalQualification = ""
    var certification = ""
    var medicalLicenceDetails = ""
    var qualification = ""
    var licenceId = ""
    var userId = ""
    var businessUserType = ""
    var businessUserTypeId = ""
    var id = ""
    var profileSummary = ""
    var workingAllDays = ""
    var type = ""
    var phoneCode = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        firstName <- map["first_name"]
        lastName <- map["last_name"]
        age <- map["age"]
        profilePic <- map["profile_pic"]
        dob <- map["date_of_birth"]
        address1 <- map["address1"]
        city <- map["city"]
        country <- map["country"]
        zipCode <- map["zip_code"]
        state <- map["state"]
        phoneNumber <- map["phone_number"]
        email <- map["email"]
        bloodGroup <- map["blood_group"]
        nationality <- map["nationality"]
        language <- map["language"]
        medicalLicenceId <- map["medical_licence_id"]
        expiryDate <- map["expiry_date"]
        userType <- map["user_type"]
        speciality <- map["speciality"]
        qualification <- map["qualification"]
        licenceId <- map["licence_id"]
        userId <- map["user_id"]
        businessUserType <- map["business_user_type"]
        businessUserTypeId <- map["business_user_type_id"]
        id <- map["id"]
        profileSummary <- map["profile_summary"]
        workingAllDays <- map["working_all_days"]
        type <- map["type"]
        phoneCode <- map["phone_code"]
    }
}

class DoctorWorkingHours: NSObject, Mappable {
    var morningShiftStart = ""
    var morningShiftEnd = ""
    var eveningShiftStart = ""
    var eveningShiftEnd = ""
    var hours24 = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        morningShiftStart <- map["morning_shift_start"]
        morningShiftEnd <- map["morning_shift_end"]
        eveningShiftStart <- map["vening_shift_start"]
        eveningShiftEnd <- map["evening_shift_end"]
        hours24 <- map["hours_24"]
    }
}

//
class EducationalQualification: NSObject, Mappable {
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
    }
}

class Certification: NSObject, Mappable {
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
    }
}

class Experience: NSObject, Mappable {
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
    }
}

class MedicalLicenceDetails: NSObject, Mappable {
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
    }
}
