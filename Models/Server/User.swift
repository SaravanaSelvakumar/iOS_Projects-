//
//  User.swift
//  Togbok
//
//  Created by Sakthikumar on 8/26/18.
//  Copyright © 2018 Sakthikumar. All rights reserved.
//

import ObjectMapper

class User: NSObject, Mappable {
    var token = ""
    var tokenType = ""
    var id = ""
    var firstName = ""
    var lastName = ""
    var googleId = ""
    var fbId = ""
    var email = ""
    var phoneNumber = ""
    var emailVerifiedAt = false
    var numberVerifiedAt = ""
    var otpVerified = ""
    var isActive = ""
    var userType = ""
    var createdAt = ""
    var updatedAt = ""
    var adminStatus = ""
    var phoneCode = ""
    var basicDetails = BasicDetails()
    var bloodGroup = ""
    var dob = ""
    var maritalStatus = ""
    var gender = ""
    var speciality = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        token <- map["access_token"]
        tokenType <- map["token_type"]
        id <- map["id"]
        speciality <- map["speciality"]
        firstName <- map["first_name"]
        lastName <- map["last_name"]
        googleId <- map["google_id"]
        fbId <- map["fb_id"]
        email <- map["email"]
        lastName <- map["lastName"]
        email <- map["email"]
        phoneNumber <- map["phone_number"]
        emailVerifiedAt <- map["email_verified_at"]
        numberVerifiedAt <- map["number_verified_at"]
        otpVerified <- map["otp_verified"]
        isActive <- map["is_active"]
        userType <- map["user_type"]
        createdAt <- map["created_at"]
        updatedAt <- map["updated_at"]
        basicDetails <- map["basicdetails"]
        adminStatus <- map["adminstatus"]
        phoneCode <- map["phone_code"]
        bloodGroup <- map["blood_group"]
        dob <- map["date_of_birth"]
        maritalStatus <- map["marital_status"]
        gender <- map["gender"]
    }
}

class BasicDetails: NSObject, Mappable {
    var gender = ""
    var bloodGroup = ""
    var age = ""
    var city = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        gender <- map["gender"]
        bloodGroup <- map["blood_group"]
        age <- map["age"]
        city <- map["city"]
    }
}

class UserResponse: NSObject, Mappable {
    var message = ""
    var status = ""
    var token = ""
    var uniqueId = ""
    var user: User?
    var otp = 0
    var verifyOtp = 0
    var verifyUniqueId = ""
    var resendUniqueId = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        token <- map["access_token"]
        user <- map["user"]
        uniqueId <- map["data.unique_id"]
        resendUniqueId <- map["unique_id"]
        otp <- map["data.otp"]
        verifyOtp <- map["otp"]
        verifyUniqueId <- map["unique_id"]
        if user == nil {
            user <- map["data.user"]
        }
        if token.isEmpty {
            token <- map["data.access_token"]
        }
    }
}

class RefreshTokenResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var refreshToken = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        message <- map["message"]
        refreshToken <- map["data.access_token"]
        status <- map["status"]
    }
}
