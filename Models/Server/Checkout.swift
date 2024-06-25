//
//  Checkout.swift
//  Nucleo
//
//  Created by Apzzo on 09/03/22.
//

import Foundation
import ObjectMapper

class CheckoutList: NSObject, Mappable {
    var checkinId = 0
    var scheduleDayId = ""
    var qId = ""
    var clientId = ""
    var preference = ""
    var businessId = ""
    var tokenPatientId = ""
    var apptPatientId = 0
    var lastName = ""
    var age = ""
    var dateOfBirth = ""
    var firstName = ""
    var bloodGroup = ""
    var gender = ""
    var apprPhoneNumber = ""
    var parentPhoneNumber = ""
    var maritalStatus = ""
    var tokenStatus = ""
    var apptStatus = ""
    var createdtime = ""
    var expectedTime = ""
    var isfee = ""
    var actualCheckiTime = ""
    var isActive = ""
    var waitTime = ""
    var fee = 0
    var prescription = ""
    var followup = 0
    var id = ""
    var consultationFee = ""
    var pharmacyDetails: PharmacyDetails?
    var followUpDetails = ""
    var actionFollowUpDetails = 0
    var phoneCode = ""
    var appTime = ""
    var email = ""
    var isAppt = false
    var patientFirstName = ""
    var patientLastName = ""

    required convenience init?(map: Map) {
        self.init()
    }

    var name: String {
        if isAppt {
            return patientFirstName + " " + patientLastName
        } else {
            return firstName + " " + lastName
        }
    }

    var patientId: String {
        return isAppt ? "\(apptPatientId)" : tokenPatientId
    }

    var status: String {
        return isAppt ? apptStatus : tokenStatus
    }

    var phoneNumber: String {
        return apprPhoneNumber.isEmpty ? parentPhoneNumber : apprPhoneNumber
    }

    func mapping(map: Map) {
        followup <- map["followup"]
        id <- map["id"]
        consultationFee <- map["consultation_fee"]
        pharmacyDetails <- map["pharmacy_details"]
        followUpDetails <- map["follow_up_details"]
        isActive <- map["is_active"]
        waitTime <- map["waitTime"]
        fee <- map["fee"]
        prescription <- map["prescription"]
        createdtime <- map["created_time"]
        actualCheckiTime <- map["actual_checkin_time"]
        expectedTime <- map["expected_time"]
        bloodGroup <- map["blood_group"]
        gender <- map["gender"]
        isfee <- map["isfee"]
        apprPhoneNumber <- map["phone_number"]
        maritalStatus <- map["marital_status"]
        tokenStatus <- map["status"]
        apptStatus <- map["appt_status"]
        firstName <- map["first_name"]
        businessId <- map["business_id"]
        tokenPatientId <- map["patient_id"]
        apptPatientId <- map["Patient_id"]
        lastName <- map["last_name"]
        age <- map["age"]
        dateOfBirth <- map["date_of_birth"]
        scheduleDayId <- map["schedule_day_id"]
        qId <- map["q_id"]
        clientId <- map["client_id"]
        preference <- map["preference"]
        checkinId <- map["checkin_id"]
        phoneCode <- map["phone_code"]
        email <- map["email"]
        patientFirstName <- map["Patientfirstname"]
        patientLastName <- map["Patientlastname"]
        appTime <- map["ApptTime"]
        parentPhoneNumber <- map["parent_phone_number"]
        actionFollowUpDetails <- map["follow_up_details"]
    }
}

class PharmacyDetails: NSObject, Mappable {
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

class CheckoutResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var data = [CheckoutList]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}
