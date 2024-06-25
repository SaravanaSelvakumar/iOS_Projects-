//
//  AddPatientDetails.swift
//  Nucleo
//
//  Created by Apzzo on 19/03/22.
//

import Foundation
import ObjectMapper

class AddPatient: NSObject, Mappable {
    var id = ""
    var userId = ""
    var clientType = ""
    var clientTypeId = ""
    var firstName = ""
    var lastName = ""
    var middleName = ""
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
    var dateOfBirth = ""
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
    var gender = ""
    var bloodGroup = ""
    var referredBy = ""
    var status = ""
    var onlineStatus = ""
    var primaryUser = ""
    var profilePercnetage = ""
    var userUniqueId = ""
    var createdAt = ""
    var updateAt = ""
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
        id <- map["id"]
        id <- map["user_id"]
        id <- map["client_type"]
        id <- map["client_type_id"]
        id <- map["first_name"]
        id <- map["last_name"]
        id <- map[" middle_name"]
        id <- map["phone_number"]
        id <- map["avatar"]
        id <- map["email"]
        id <- map["address1"]
        id <- map["address2"]
        id <- map["state"]
        id <- map["country"]
        id <- map["zip_code"]
        id <- map["geo_location"]
        id <- map["date_of_birth"]
        id <- map["marital_status"]
        id <- map["nationality"]
        id <- map["language"]
        id <- map["emergency_contact"]
        id <- map["employment_details"]
        id <- map["insurance_details"]
        id <- map["medical_history"]
        id <- map["medicine_history"]
        id <- map["social_habits"]
        id <- map["family_medical_history"]
        id <- map["payment_details"]
        id <- map["vehicle_details"]
        id <- map["gender"]
        id <- map["blood_group"]
        id <- map["referred_by"]
        id <- map["status"]
        id <- map["online_status"]
        id <- map["primary_user"]
        id <- map["profile_percentage"]
        id <- map["user_unique_id"]
        id <- map["created_at"]
        id <- map["updated_at"]
        id <- map["subscription"]
        id <- map["payment_status"]
        id <- map["expires_at"]
        id <- map["is_deleted"]
        id <- map["subscription_status"]
        id <- map["phone_code"]
    }
}

class AddPatientResponse : NSObject, Mappable{
    
    var status = " "
    var message = " "
    var user : AddPatient?
    
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        
        
        status <- map["status"]
        message <- map["message"]
        user <- map["user"]
    }
    
    
}
