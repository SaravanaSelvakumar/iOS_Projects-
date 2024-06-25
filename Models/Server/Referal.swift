//
//  ReferalDetails.swift
//  Nucleo
//
//  Created by Apzzo on 03/01/22.
//

import Foundation
import ObjectMapper

class Referal: NSObject, Mappable {
    var clientCredit = 0
    var numberofreferrals = 0
    var numberofreferralsAccepted = 0
    var totalCredits = 0
    var businessProfessionalCredit = 0
    var referalCode = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        clientCredit <- map["client_credit"]
        numberofreferrals <- map["numberofreferrals"]
        numberofreferralsAccepted <- map["numberofreferrals_accepted"]
        totalCredits <- map["total_credits"]
        businessProfessionalCredit <- map["business_professional_credit"]
        referalCode <- map["referal_code"]
    }
}

class ReferralDetailsResponse: NSObject, Mappable {
    var status_int: Int?
    var status_string: String?
    var status: Bool {
        if let status = status_int {
            return status == 1
        } else if let status = status_string {
            return status == "1"
        }
        return false
    }

    var message = ""
    var data: Referal?

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status_int <- map["status"]
        status_string <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}

class ClientDetail: NSObject, Mappable {
    var firstName = ""
    var lastName = ""
    var patientId = ""
    var bloodGroup = ""
    var age = ""
    var avatar = ""
    var profilePercentage = ""
    var businessName = ""
    var id = ""
    var address1 = ""
    var speciality = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        firstName <- map["first_name"]
        lastName <- map["last_name"]
        patientId <- map["patient_id"]
        bloodGroup <- map["blood_group"]
        age <- map["age"]
        avatar <- map["avatar"]
        profilePercentage <- map["profile_percentage"]
        businessName <- map["business_name"]
        id <- map["id"]
        speciality <- map["speciality_detail"]
        address1 <- map["address1"]
        
    }
}

class ClientShotDetailsResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var clientShortDetail = [ClientDetail]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        clientShortDetail <- map["data"]
    }
}

class DoctorDetail: NSObject, Mappable {
    var firstName = ""
    var lastName = ""
    var doctorId = ""
    var bloodGroup = ""
    var age = ""
    var avatar = ""
    var profilePercentage = ""
    var businessName = ""
    var qualification = ""
    var speciality = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        firstName <- map["first_name"]
        lastName <- map["last_name"]
        doctorId <- map["doctor_id"]
        bloodGroup <- map["blood_group"]
        age <- map["age"]
        avatar <- map["avatar"]
        profilePercentage <- map["profile_percentage"]
        businessName <- map["business_name"]
        qualification <- map["qualification"]
        speciality <- map["speciality_name"]
    }
}

class DoctorShotDetailsResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var doctorShortDetail = DoctorDetail()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        doctorShortDetail <- map["data"]
    }
}
