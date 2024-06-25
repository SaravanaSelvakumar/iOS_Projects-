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
    var maritalStatus = ""
    var workingHours = [DoctorWorkingHours]()
    var workingDays = [String]()
    var speciality = ""
    var educationalQualification = [EducationalQualification]()
    var certification = [Certification]()
    var medicalLicenceDetails = [MedicalLicenceDetails]()
    var experience = [Experience]()
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
        experience <- map["experience"]
        userId <- map["user_id"]
        maritalStatus <- map["marital_status"]
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
        eveningShiftStart <- map["evening_shift_start"]
        eveningShiftEnd <- map["evening_shift_end"]
        hours24 <- map["hours_24"]
    }
}

//
class EducationalQualification: NSObject, Mappable {
    var specialization = ""
    var validURL = ""
    var completionMonth = ""
    var completionYear = ""
    var validUptoMonth = ""
    var validUptoYear = ""
    var id = ""
    var education = ""
    var educationId = ""
    var specializationId = ""
    var university = ""
    var completionYearMonth = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        
        specialization <- map["specialization"]
        validURL <- map["valid_URL"]
        completionMonth <- map["completion_month"]
        completionYear <- map["completion_year"]
        validUptoMonth <- map["valid_upto_month"]
        validUptoYear <- map["valid_upto_year"]
        id <- map["id"]
        education <- map["education"]
        educationId <- map["education_id"]
        specializationId <- map["specialization_id"]
        university <- map["university"]
        completionYearMonth <- map["completion_year_month"]
    }
}

class Certification: NSObject, Mappable {
    var organization = ""
    var specialization = ""
    var validURL = ""
    var certificationCompletionMonth = ""
    var certificationCompletionYear = ""
    var validIptoMonth = ""
    var validUptoYear = ""
    var id = ""
    var sno = ""
    var completionYearMonth = ""
    var validDate = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        organization <- map["organization"]
        specialization <- map["specialization"]
        validURL <- map["valid_URL"]
        certificationCompletionMonth <- map["certification_completion_month"]
        certificationCompletionYear <- map["certification_completion_year"]
        validIptoMonth <- map["valid_upto_month"]
        validUptoYear <- map["valid_upto_year"]
        id <- map["id"]
        sno <- map["s_no"]
        completionYearMonth <- map["completion_year_month"]
        validDate <- map["completion_year_month"]
    }
}

class Experience: NSObject, Mappable {
    var hospital = ""
    var exAddress = ""
    var exCity = ""
    var exState = ""
    var exPinCode = ""
    var exCountry = ""
    var experienceDoj = ""
    var experienceDor = ""
    var id = ""
    var sno = ""
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        hospital <- map["hospital"]
        exAddress <- map["ex_address"]
        exCity <- map["ex_city"]
        exState <- map["ex_state"]
        exPinCode <- map["ex_zip_code"]
        exCountry <- map["ex_country"]
        experienceDoj <- map["experience_doj"]
        experienceDor <- map["experience_dor"]
        id <- map["id"]
        sno <- map["s_no"]
    }
}

class MedicalLicenceDetails: NSObject, Mappable {
    var id = ""
    var organization = ""
    var licenceId = ""
    var expirationDate = ""
    var sno = ""
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        organization <- map["organization"]
        licenceId <- map["licence_Id"]
        expirationDate <- map["expiration_date"]
        sno <- map["s_no"]
    }
}

class DoctorResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var data = [Doctor]()
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}
