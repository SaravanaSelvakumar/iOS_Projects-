//
//  ClientById.swift
//  Nucleo
//
//  Created by Apzzo on 05/01/22.
//

import Foundation
import ObjectMapper

class QRCode: NSObject, Mappable {
    var id = 0
    var userId = ""
    var firstName = ""
    var lastName = ""
    var phoneNumber = ""
    var avatar = ""
    var email = ""
    var address1 = ""
    var address2 = ""
    var city = ""
    var country = ""
    var state = ""
    var zipCode = ""
    var dateOfBirth = ""
    var age = ""
    var maritalStatus = ""
    var nationality = ""
    var language = ""
    var emergencyContact = ""
    var employmentDetails = ""
    var insuranceDetails = ""
    var medicalHistory = ""
    var familyMedicalHistory = ""
    var paymentDetails = ""
    var vehicleDetails = ""
    var gender = ""
    var bloodGroup = ""
    var medicineHistory = ""
    var socialHabits = ""
    var phoneCode = ""
    var familyCount = ""
    var familyDetails = [AccountFamilyDetail]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        userId <- map["user_id"]
        firstName <- map["first_name"]
        lastName <- map["last_name"]
        phoneNumber <- map["phone_number"]
        avatar <- map["avatar"]
        email <- map["email"]
        avatar <- map["avatar"]
        address1 <- map["address1"]
        address2 <- map["address2"]
        city <- map["city"]
        country <- map["country"]
        state <- map["state"]
        zipCode <- map["zip_code"]
        dateOfBirth <- map["date_of_birth"]
        age <- map["age"]
        maritalStatus <- map["marital_status"]
        nationality <- map["nationality"]
        language <- map["language"]
        emergencyContact <- map["emergency_contact"]
        employmentDetails <- map["employment_details"]
        insuranceDetails <- map["insurance_details"]
        medicalHistory <- map["medical_history"]
        familyMedicalHistory <- map["family_medical_history"]
        paymentDetails <- map["payment_details"]
        vehicleDetails <- map["vehicle_details"]
        gender <- map["gender"]
        bloodGroup <- map["blood_group"]
        medicineHistory <- map["medicine_history"]
        socialHabits <- map["social_habits"]
        phoneCode <- map["phone_code"]
        familyCount <- map["family_count"]
        familyDetails <- map["family_details"]
    }
}

class FamilyDetails: NSObject, Mappable {
    var id = ""
    var userId = ""
    var firstName = ""
    var lastName = ""
    var dateOfBirth = ""
    var gender = ""
    var bloodGroup = ""
    var phoneNumber = ""
    var relationship = ""
    var age = ""
    var medicalHistory = ""
    var familyMedicalHistory = ""
    var medicineHistory = ""
    var socialHabits = ""
    var queueData = [String]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        userId <- map["user_id"]
        firstName <- map["first_name"]
        lastName <- map["last_name"]
        dateOfBirth <- map["date_of_birth"]
        gender <- map["gender"]
        bloodGroup <- map["blood_group"]
        phoneNumber <- map["phone_number"]
        relationship <- map["relationship"]
        age <- map["age"]
        medicalHistory <- map["medical_history"]
        familyMedicalHistory <- map["family_medical_history"]
        medicineHistory <- map["medicine_history"]
        socialHabits <- map["social_habits"]
        queueData <- map["queue_data"]
    }
}

class FamilyMedicalHistory: NSObject, Mappable {
    var relationship = ""
    var disease = [Int]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        relationship <- map["relationship"]
        disease <- map["disease"]
    }
}

class MedicineHistoty: NSObject, Mappable {
    var currentIntakeMedicine = ""
    var intakeMedicineNotes = ""
    var medicinAlergy = ""
    var medicineAlergyNotes = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        currentIntakeMedicine <- map["current_intake_medicine"]
        intakeMedicineNotes <- map["intake_medicine_notes"]
        medicinAlergy <- map["medicin_alergy"]
        medicineAlergyNotes <- map["medicine_alergy_notes"]
    }
}

class ClientResponse: NSObject, Mappable {
    var status = ""
    var data: QRCode?

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        data <- map["data"]
    }
}
