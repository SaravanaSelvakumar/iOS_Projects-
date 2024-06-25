//
//  CheckIn.swift
//  Nucleo
//
//  Created by Apzzo on 23/02/22.
//

import Foundation
import ObjectMapper

class CheckIn: NSObject, Mappable {
    // Check in
    var id = ""
    var qId = ""
    var userId = ""
    var firstName = ""
    var lastName = ""
    var dateOfBirth = ""
    var gender = ""
    var email = ""
    var avatar = ""
    var address1 = ""
    var address2 = ""
    var city = ""
    var country = ""
    var state = ""
    var zipCode = ""
    var maritalStatus = ""
    var nationality = ""
    var language = ""
    var emergencyConact: EmergencyContact?
    var employmentDetails: EmploymentDetail?
    var insuranceDetails = ""
    var paymentDetails: PaymentDetail?
    var vechicleDetails = ""
    var phoneCode = ""
    var bloodGroup = ""
    var phoneNumber = ""
    var relationShip = ""
    var age = ""
    var medicalHistory = ""
    var familyMedicalHistory: [FamilyMedicalHistory]?
    var medicineHistroy = MedicineHistory()
    var socialHabits = [String]()
    var familQueueData = [PatientQueueData]()
    var queueData = [PatientQueueData]()
    var category = ""
    var status = ""
    var height = ""
    var weight = ""
    var queueType = ""
    var otherComments = ""
    var bmi = ""
    var checkinId = ""
    var temperature = ""
    var bp = ""
    var pulse = ""
    var calculatedBmi = ""
    var businessId = ""
    var clientApptId = ""
    var symptoms = [SymptomList]()
    var reasonForVisit = [ReasonForVisitLists]()
    var apptTime = ""

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
        age <- map["age"]
        medicalHistory <- map["medical_history"]
        familyMedicalHistory <- map["family_medical_history"]
        socialHabits <- map["social_habits"]
        medicineHistroy <- map["medicine_history"]
        email <- map["email"]
        avatar <- map["avatar"]
        address1 <- map["address1"]
        address2 <- map["address2"]
        city <- map["city"]
        country <- map["country"]
        state <- map["state"]
        zipCode <- map["zip_code"]
        maritalStatus <- map["marital_status"]
        nationality <- map["nationality"]
        language <- map["language"]
        emergencyConact <- map["emergency_contact"]
        employmentDetails <- map["employment_details"]
        insuranceDetails <- map["insurance_details"]
        paymentDetails <- map["payment_details"]
        vechicleDetails <- map["vehicle_details"]
        phoneCode <- map["phone_code"]
        category <- map["category"]
        status <- map["status"]
        qId <- map["q_id"]
        relationShip <- map["relationship"]
        queueData <- map["queue_data"]
        height <- map["height"]
        weight <- map["weight"]
        queueType <- map["queue_type"]
        otherComments <- map["other_comments"]
        bmi <- map["bmi"]
        checkinId <- map["checkin_id"]
        temperature <- map["temperature"]
        bp <- map["bp"]
        pulse <- map["pulse"]
        calculatedBmi <- map["calculated_bmi"]
        familQueueData <- map["queue_data"]
        businessId <- map["business_id"]
        reasonForVisit <- map["reason_for_visit"]
        symptoms <- map["symptoms"]
        clientApptId <- map["client_appt_id"]
        apptTime <- map["appt_time"]
    }
}

class PatientQueueData: NSObject, Mappable {
    var firstName = ""
    var latitude = ""
    var longitude = ""
    var lastName = ""
    var reasonForVisit = [ReasonForVisitLists]()
    var height = ""
    var weight = ""
    var queueType = ""
    var otherComments = ""
    var bmi = ""
    var checkinId = ""
    var temperature = ""
    var bp = ""
    var pulse = ""
    var calculatedBmi = ""
    var symptoms = [SymptomList]()
    var qId = ""
    var apptId = ""
    var clientId = ""
    var scheduleDayId = ""
    var preference = 0
    var expectedTime = ""
    var createdTime = ""
    var status = ""
    var isActive = ""
    var apptStartTime = ""
    var apptEndTime = ""
    var businessId = ""
    var businessUserId = ""
    var waitTime = ""
    var travelTime = ""
  

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        firstName <- map["first_name"]
        latitude <- map["latitude"]
        longitude <- map["longitude"]
        lastName <- map["last_name"]
        reasonForVisit <- map["reason_for_visit"]
        height <- map["height"]
        weight <- map["weight"]
        queueType <- map["queue_type"]
        otherComments <- map["other_comments"]
        bmi <- map["bmi"]
        checkinId <- map["checkin_id"]
        temperature <- map["temperature"]
        bp <- map["bp"]
        pulse <- map["pulse"]
        calculatedBmi <- map["calculated_bmi"]
        symptoms <- map["symptoms"]
        qId <- map["q_id"]
        apptId <- map["appt_id"]
        clientId <- map["client_id"]
        scheduleDayId <- map["schedule_day_id"]
        preference <- map["preference"]
        expectedTime <- map["expected_time"]
        createdTime <- map["created_time"]
        status <- map["status"]
        isActive <- map["is_active"]
        apptStartTime <- map["appt_start_time"]
        apptEndTime <- map["appt_end_time"]
        businessId <- map["business_id"]
        businessUserId <- map["business_user_id"]
        waitTime <- map["waitTime"]
        travelTime <- map["travel_time"]
    }
}

class ReasonForVisitLists: NSObject, Mappable {
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

class SymptomList: NSObject, Mappable {
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

class EmergencyContact: NSObject, Mappable {
    var firstName = ""
    var lastName = ""
    var relationship = ""
    var phoneNumber = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        firstName <- map["first_name"]
        lastName <- map["last_name"]
        relationship <- map["relationship"]
        phoneNumber <- map["phone_number"]
    }
}

class EmploymentDetail: NSObject, Mappable {
    var employerName = ""
    var address = ""
    var city = ""
    var country = ""
    var state = ""
    var zipCode = ""
    var phoneNumber = ""
    var employeeStatus = ""

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
        employeeStatus <- map["employee_status"]
    }
}

class PaymentDetail: NSObject, Mappable {
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
        expiryYear <- map["expiry_month"]
        expiryMonth <- map["expiry_year"]
        cvv <- map["cvv"]
        paymentOption <- map["payment_option"]
        cardType <- map["card_type"]
    }
}

class CheckInResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var data: CheckIn?
    var appointmentData: [CheckIn]?
    var checkInDetail: CheckInDetails?
    var familyData: [CheckIn]?
    var queuedata: PatientQueueData?

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        data <- map["data"]
        appointmentData <- map["data"]
        checkInDetail <- map["data"]
        status <- map["status"]
        message <- map["message"]
        data <- map["client"]
        familyData <- map["family_details"]
        queuedata <- map["queue_data"]
    }
}
