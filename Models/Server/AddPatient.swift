//
//  AddPatient.swift
//  Nucleo
//
//  Created by Apzzo on 24/03/22.
//

import Foundation
import ObjectMapper

class AddPatinet: NSObject, Mappable {
    var userId = ""
    var firstName = ""
    var lastName = ""
    var gender = ""
    var dateOfBirth = ""
    var bloodGroup = ""
    var relationship = ""
    var type = ""
    var clientType = ""
    var clientTypeId = ""
    var phoneNumber = ""
    var avatar = ""
    var email = ""
    var address1 = ""
    var address2 = ""
    var city = ""
    var state = ""
    var country = ""
    var zipCode = ""
    var geoLocation = ""
    var age = ""
    var maritalStatus = ""
    var nationality = ""
    var language = ""
    var emergencyContact = ""
    var employmentDetails = ""
    var insuranceDetails = ""
    var medicalHistory = ""
    var medicineHistory = ""
    var socialHabits = ""
    var familyMedicalHistory = ""
    var paymentDetails = ""
    var vehicleDetails = ""
    var referredBy = ""
    var status = ""
    var onlineStatus = ""
    var primaryUser = ""
    var profilePercentage = ""
    var userUniqueId = ""
    var createdAt = ""
    var updatedAt = ""
    var subscription = ""
    var paymentStatus = ""
    var expiresAt = ""
    var isDeleted = ""
    var subscriptionStatus = ""
    var phoneCode = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        userId <- map["user_id"]
        firstName <- map["first_name"]
        lastName <- map["last_name"]
        gender <- map["gender"]
        dateOfBirth <- map["date_of_birth"]
        bloodGroup <- map["blood_group"]
        relationship <- map["relationship"]
        type <- map["type"]
        userId <- map["user_id"]
        clientType <- map["client_type"]
        clientTypeId <- map["client_type_id"]
        phoneNumber <- map["phone_number"]
        avatar <- map["avatar"]
        email <- map["email"]
        address1 <- map["address1"]
        address2 <- map["address2"]
        city <- map["city"]
        state <- map["state"]
        country <- map["country"]
        zipCode <- map["zip_code"]
        geoLocation <- map["geo_location"]
        age <- map["age"]
        maritalStatus <- map["marital_status"]
        nationality <- map["nationality"]
        language <- map["language"]
        emergencyContact <- map["emergency_contact"]
        employmentDetails <- map["employment_details"]
        insuranceDetails <- map["insurance_details"]
        medicineHistory <- map["medical_history"]
        medicalHistory <- map["medicine_history"]
        socialHabits <- map["social_habits"]
        familyMedicalHistory <- map["family_medical_history"]
        paymentDetails <- map["payment_details"]
        vehicleDetails <- map["vehicle_details"]
        gender <- map["gender"]
        bloodGroup <- map["blood_group"]
        referredBy <- map["referred_by"]
        status <- map["status"]
        onlineStatus <- map["online_status"]
        primaryUser <- map["primary_user"]
        profilePercentage <- map["profile_percentage"]
        userUniqueId <- map["user_unique_id"]
        createdAt <- map["created_at"]
        updatedAt <- map["updated_at"]
        subscription <- map["subscription"]
        paymentStatus <- map["payment_status"]
        expiresAt <- map["expires_at"]
        isDeleted <- map["is_deleted"]
        subscriptionStatus <- map["subscription_status"]
        phoneCode <- map["phone_code"]
    }
}

class AddPatinetResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var data = [AddPatinet]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["user"]
    }
}
