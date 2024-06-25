//
//  GetBusinessUserDetails.swift
//  Nucleo
//
//  Created by Apzzo on 19/01/22.
//

import Foundation
import ObjectMapper

class DoctorAccountDetail: NSObject, Mappable {
    var id = ""
    var userId = ""
    var businessUserType = ""
    var businessUserTypeId = ""
    var firstName = ""
    var middleName = ""
    var lastName = ""
    var email = ""
    var faxNumber = 0
    var avatar = ""
    var licenceId = ""
    var expiryDate = ""
    var workingHours: GetDoctorWorkingHours?
    var workingDays = [String]()
    var qualification = ""
    var educationalQualification: [GetEducationalQualification]?
    var certification = ""
    var experience: [GetExperience]?
    var phoneNumber = ""
    var phoneCode = ""
    var landline = 0
    var address1 = ""
    var address2 = ""
    var city = ""
    var state = ""
    var country = ""
    var zipCode = ""
    var geoLocation = ""
    var dateOfBirth = ""
    var maritalStatus = ""
    var nationality = ""
    var language = ""
    var profileSummary = ""
    var gender = ""
    var bloodGroup = ""
    var speciality = ""
    var grouoOfSpeciality = [String]()
//    var specialitiesOfDoctors = [String]()
    var profilePercentage = ""
    var userUniqueId = 0
    var medicalLicenceDetails = [GetMedicalLicenceDetails]()
    var scheduleType = ""
    var emergencyNumber = ""
    var paymentDetails = PaymentDetails()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        userId <- map["user_id"]
        businessUserType <- map["business_user_type"]
        businessUserTypeId <- map["business_user_type_id"]
        firstName <- map["first_name"]
        middleName <- map["middle_name"]
        lastName <- map["last_name"]
        email <- map["email"]
        faxNumber <- map["fax_number"]
        avatar <- map["avatar"]
        licenceId <- map["licence_id"]
        expiryDate <- map["expiry_date"]
        workingHours <- map["working_hours"]
        workingDays <- map["working_days"]
        qualification <- map["qualification"]
        educationalQualification <- map["educational_qualification"]
        certification <- map["certification"]
        experience <- map["experience"]
        phoneNumber <- map["phone_number"]
        phoneCode <- map["phone_code"]
        landline <- map["landline"]
        address1 <- map["address1"]
        address2 <- map["address2"]
        city <- map["city"]
        state <- map["state"]
        country <- map["country"]
        zipCode <- map["zip_code"]
        geoLocation <- map["geo_location"]
        dateOfBirth <- map["date_of_birth"]
        maritalStatus <- map["marital_status"]
        nationality <- map["nationality"]
        language <- map["language"]
        profileSummary <- map["profile_summary"]
        gender <- map["gender"]
        bloodGroup <- map["blood_group"]
        speciality <- map["speciality"]
        grouoOfSpeciality <- map["speciality_array"]
        profilePercentage <- map["profile_percentage"]
        userUniqueId <- map["user_unique_id"]
        medicalLicenceDetails <- map["medical_licence_details"]
        scheduleType <- map["schedule_type"]
        emergencyNumber <- map["emergency_number"]
        paymentDetails <- map["payment_details"]
    }

    var ugEducationalQualification: GetEducationalQualification? {
        return educationalQualification?.first ?? nil
    }

    var pgEducationalQualification: GetEducationalQualification? {
        if educationalQualification?.count ?? 0 >= 2 {
            return educationalQualification?[1] ?? nil
        } else {
            return nil
        }
    }
}

// 1
class GetEducationalQualification: NSObject, Mappable {
    var organisation: String?
    var specialization: String?
    var validURL: String?
    var certificationCompletionMonth: String?
    var certificationCompletionYear: String?
    var validUptoMonth: String?
    var validUptoYear: String?
    var id: String?
    var sno: String?
    var education: String?
    var educationId: String?
    var specializationId: String?
    var university: String?
    var completionYearMonth: String?

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        organisation <- map["organization"]
        specialization <- map["specialization"]
        validURL <- map["valid_URL"]
        certificationCompletionMonth <- map["certification_completion_month"]
        certificationCompletionYear <- map["certification_completion_year"]
        validUptoMonth <- map["valid_upto_month"]
        validUptoYear <- map["valid_upto_year"]
        id <- map["id"]
        sno <- map["s_no"]
        education <- map["education"]
        educationId <- map["education_id"]
        specializationId <- map["specialization_id"]
        university <- map["university"]
        completionYearMonth <- map["completion_year_month"]
    }

    var ugYear: String {
        let yearMonth = completionYearMonth?.components(separatedBy: "-")
        return yearMonth?.last ?? ""
    }

    var ugMonth: String {
        let yearMonth = completionYearMonth?.components(separatedBy: "-")
        return yearMonth?.first ?? ""
    }

    var pgYear: String {
        let yearMonth = completionYearMonth?.components(separatedBy: "-")
        return yearMonth?.last ?? ""
    }

    var pgMonth: String {
        let yearMonth = completionYearMonth?.components(separatedBy: "-")
        return yearMonth?.first ?? ""
    }
}

// 2
class GetDoctorWorkingHours: NSObject, Mappable {
    var morningShiftStart = ""
    var morningShiftEnd = ""
    var eveningShiftStart = ""
    var eveningShiftEnd = ""
    var hours24Value = ""
    var hours24BoolValue = false

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        morningShiftStart <- map["morning_shift_start"]
        morningShiftEnd <- map["morning_shift_end"]
        eveningShiftStart <- map["evening_shift_start"]
        eveningShiftEnd <- map["evening_shift_end"]
        hours24Value <- map["hours_24"]
        hours24BoolValue <- map["hours_24"]
    }

    var hours24: Bool {
        if hours24Value.lowercased() == "true" || hours24Value.lowercased() == "false" {
            return hours24Value.lowercased() == "true"
        } else {
            return hours24BoolValue
        }
    }
}

class GetExperience: NSObject, Mappable {
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

class GetMedicalLicenceDetails: NSObject, Mappable {
    var organization = ""
    var licenceId = ""
    var expirationDate = ""
    var id = ""
    var sno = ""
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        organization <- map["organization"]
        licenceId <- map["licence_Id"]
        expirationDate <- map["expiration_date"]
        id <- map["id"]
        sno <- map["s_no"]
    }
}

class GetBusinessUserDetails: NSObject, Mappable {
    var status = ""
    var data: DoctorAccountDetail?
    var message = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        data <- map["data"]
        message <- map["message"]
    }
}
