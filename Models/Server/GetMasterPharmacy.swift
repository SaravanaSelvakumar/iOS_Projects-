//
//  GetMasterPharmacy.swift
//  Nucleo
//
//  Created by Apzzo on 19/01/22.
//

import Foundation
import ObjectMapper


class PharmacyData: NSObject, Mappable {
    var id = 0
    var pharmacyId = ""
    var pharmacyName = ""
    var pharmacyLocation = ""
    var onlinePrescription = ""
    var userId = ""
    var createdAt = ""
    var updatedAt = ""
    var status = ""
   
    
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        pharmacyId <- map["pharmacy_id"]
        pharmacyName <- map["pharmacy_name"]
        pharmacyLocation <- map["pharmacy_location"]
        onlinePrescription <- map["online_prescription"]
        userId <- map["user_id"]
        createdAt <- map["created_at"]
        updatedAt <- map["updated_at"]
        status <- map["status"]
       
    }
}


class GetMasterPharmacy: NSObject, Mappable {
    var status = ""
    var countOfRecords = 0
    var message = ""
    var data = [PharmacyData] ()
   
 

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        countOfRecords <- map["countOfRecords"]
        message <- map["message"]
        data <- map["data"]
    }
}

class Profession: NSObject, Mappable {
            var id = ""
            var firstName = ""
            var lastName = ""
            var googleId = ""
            var fbId = ""
            var email = ""
            var phoneNumber = ""
            var emailVerifiedAt = ""
            var numberVerifiedAt = ""
            var password = ""
            var isActive = ""
            var otpVerified = ""
            var userType = ""
            var rememberToken = ""
            var uniqueId = ""
            var createdAt = ""
            var updatedAt = ""
            var phoneCode = ""
            var isDeleted = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        firstName <- map["first_name"]
        lastName <- map["last_name"]
        googleId <- map["google_id"]
        fbId <- map["fb_id"]
        email <- map["email"]
        phoneNumber <- map["phone_number"]
        emailVerifiedAt <- map["email_verified_at"]
        numberVerifiedAt <- map["number_verified_at"]
        password <- map["password"]
        isActive <- map["is_active"]
        otpVerified <- map["otp_verified"]
        userType <- map["user_type"]
        rememberToken <- map["remember_token"]
        uniqueId  <- map["unique_id"]
        createdAt  <- map["created_at"]
        updatedAt <- map["updated_at"]
        phoneCode <- map["phone_code"]
        isDeleted <- map["is_deleted"]
    }
}

class AddProfessionResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var data = Profession()
   
 

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["user"]
    }
}
