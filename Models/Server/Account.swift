//
//  Account.swift
//  Nucleo
//
//  Created by Apzzo on 24/02/22.
//

import ObjectMapper
import UIKit

class Account: Mappable {
    var firstName = ""
    var lastName = ""
    var phoneNumber = ""
    var avatar = ""
    var email = ""
    var address1 = ""
    var address2 = ""
    var city = ""
    var state = ""
    var country = ""
    var zipCode = ""
    var dateOfBirth = ""
    var age = ""
    var relationShip = ""
    var maritalStatus = ""
    var nationality = ""
    var language = ""
    var emergencyContact: GetEmergencyContact?
    var employmentDetails = [EmploymentDetails]()
    var insuranceDetails: GetInsuranceDetails?
    var medicalHistory = [String]()
    var familyMedicalHistory = [FamilyMedicalHistory]()
    var paymentDetails = PaymentDetails()
    var vehicleDetails = ""
    var gender = ""
    var bloodGroup = ""
    var medicineHistory: MedicineHistory?
    var socialHabits = [String]()
    var phoneCode = ""
    var familyCount = ""
    var familyDetail = [AccountFamilyDetail]()
    var primaryUser: AccountFamilyDetail?

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        firstName <- map["first_name"]
        lastName <- map["last_name"]
        phoneNumber <- map["phone_number"]
        avatar <- map["avatar"]
        email <- map["email"]
        address1 <- map["address1"]
        address2 <- map["address2"]
        city <- map["city"]
        country <- map["country"]
        state <- map["state"]
        relationShip <- map["relationship"]
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
        medicalHistory <- map["medicine_history"]
        socialHabits <- map["social_habits"]
        phoneCode <- map["phone_code"]
        familyDetail <- map["family_details"]
        medicineHistory <- map["medicine_history"]
        paymentDetails <- map["payment_details"]
    }
}

class AccountFamilyDetail: Mappable {
    var id = ""
    var userId = ""
    var firstName = ""
    var lastName = ""
    var dob = ""
    var age = ""
    var gender = ""
    var relationShip = ""
    var bloodGroup = ""
    var phoneNumber = ""
    var countryCode = ""
    var socialHabits = [String]()
    var medicalHistory = [String]()
    var fatherMedicalHistory = [Int]()
    var motherMedicalHistory = [Int]()
    var familyMedicalHistory: [FamilyMedicalHistory]?
    var medicineHistory = MedicineHistory()
    var insuranceDetails: GetInsuranceDetails?
    var emergencyContact: GetEmergencyContact?
    var scoialHabits = [String]()
    var queueData: [QueueData]?
    var isSelected = false
    var avatar = ""
    var phoneCode = ""
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        userId <- map["user_id"]
        firstName <- map["first_name"]
        lastName <- map["last_name"]
        dob <- map["date_of_birth"]
        gender <- map["gender"]
        relationShip <- map["relationship"]
        gender <- map["gender"]
        bloodGroup <- map["blood_group"]
        phoneNumber <- map["phone_number"]
        insuranceDetails <- map["insurance_details"]
        medicalHistory <- map["medical_history"]
        familyMedicalHistory <- map["family_medical_history"]
        medicineHistory <- map["medicine_history"]
        scoialHabits <- map["social_habits"]
        queueData <- map["queue_data"]
        avatar <- map["avatar"]
        phoneCode <- map["phone_code"]
        emergencyContact <- map["emergency_contact"]
        socialHabits <- map["social_habits"]
    }
}

class familyMedicalHistory: Mappable {
    var relationship = ""
    var disease = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        relationship <- map["relationship"]
        disease <- map["disease"]
    }
}

class GetInsuranceDetails: Mappable {
    var insuranceProvider = ""
    var policyIdNumber = ""
    var healthInsuranceConfirmation = ""
    var patientPolicyHolder = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        insuranceProvider <- map["insurance_provider"]
        policyIdNumber <- map["policy_id_number"]
        healthInsuranceConfirmation <- map["health_insurance_confirmation"]
        patientPolicyHolder <- map["patient_policy_holder"]
    }
}

class GetEmergencyContact: Mappable {
    var firstName = ""
    var lastName = ""
    var relationship = RelationShipDetails()
    var phoneNumber = ""
    var emerRelationShip = ""
    var phoneCode = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        firstName <- map["first_name"]
        lastName <- map["last_name"]
        relationship <- map["relationship"]
        emerRelationShip <- map["relationship"]
        phoneNumber <- map["phone_number"]
        phoneCode <- map["phone_code"]
    }

    var relationShipWithString: String {
        return relationship.value
    }
}

class EmploymentDetails: Mappable {
    var employerName = ""
    var address = ""
    var city = ""
    var country = ""
    var state = ""
    var zipCode = ""
    var phoneNumber = ""
    var employeestatus = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        employerName <- map["employer_name"]
        address <- map["address"]
        city <- map["city"]
        country <- map["country"]
        state <- map["state"]
        zipCode <- map["zip_code"]
        phoneNumber <- map["phone_number"]
        employeestatus <- map["employee_status"]
    }
}

class RelationShipDetails: Mappable {
    var label = ""
    var value = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        label <- map["label"]
        value <- map["value"]
    }
}

class CardType: Mappable {
    var label = ""
    var value = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        label <- map["label"]
        value <- map["value"]
    }
}

class MedicineHistory: NSObject, Mappable {
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

class PaymentDetails: NSObject, Mappable {
    var creditCard = ""
    var cardName = ""
    var expiryMonth = ""
    var expiryYear = ""
    var cvv = ""
    var paymentOption = ""
    var cardType = CardType()
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        creditCard <- map["credit_card"]
        cardName <- map["card_name"]
        expiryMonth <- map["expiry_month"]
        expiryYear <- map["expiry_year"]
        cvv <- map["cvv"]
        paymentOption <- map["payment_option"]
        cardType <- map["card_type"]
    }
}

class AccountResponse: NSObject, Mappable {
    var status = ""
    var data: Account?
    var primaryUserData = AccountFamilyDetail()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        data <- map["data"]
        primaryUserData <- map["primary_details"]
    }
}

class AddFamilyResponse: NSObject, Mappable {
    var status = ""
    var data = AccountFamilyDetail()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        data <- map["data"]
    }
}

class GetTwilioTokenResponse: NSObject, Mappable {
    var token = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        token <- map["token"]
    }
}

class GetVideoCallResponse: NSObject, Mappable {
    var data = VideoCall()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        data <- map["data"]
    }
}

class VideoCall: NSObject, Mappable {
    var clientApptId = ""
    var clientId = ""
    var businessId = ""
    var businessUserId = ""
    var apptDate = ""
    var apptTime = ""
    var apptEndTime = ""
    var paymentStatus = ""
    var scheduleType = ""
    var apptStatus = ""
    var isdeleted = ""
    var apptHistory = ""
    var createdDate = ""
    var amount = ""
    var orderId = ""
    var paymentId = ""
    var clientapptId = ""
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        clientApptId <- map["client_appt_id"]
        clientId <- map["client_id"]
        businessId <- map["business_id"]
        businessUserId <- map["business_user_id"]
        apptDate <- map["appt_date"]
        apptTime <- map["appt_time"]
        apptEndTime <- map["appt_end_time"]
        paymentStatus <- map["payment_status"]
        scheduleType <- map["schedule_type"]
        apptStatus <- map["appt_status"]
        isdeleted <- map["isdeleted"]
        apptHistory <- map["appt_history"]
        createdDate <- map["created_date"]
        amount <- map["amount"]
        orderId <- map["order_id"]
        paymentId <- map["payment_id"]
        clientapptId <- map["client_appt_id"]
    }
}

class AWSS3Details: NSObject, Mappable {
    var id = ""
    var key = ""
    var value = ""
    var credentialType = ""
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        key <- map["key"]
        value <- map["value"]
        credentialType <- map["credential_type"]
    }
}

class AWSResponse: NSObject, Mappable {
    var status = ""
    var data: [AWSS3Details]?

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        data <- map["data"]
    }
}
