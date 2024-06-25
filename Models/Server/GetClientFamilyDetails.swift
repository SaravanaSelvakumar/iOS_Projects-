//
//  GetClientFamilyDetails.swift
//  Nucleo
//
//  Created by Apzzo on 06/01/22.
//
import Foundation
import ObjectMapper

class QueueData: NSObject, Mappable {
    
    var firstName = ""
    var lastName = ""
    var reasonForVisit = ""
    var height = ""
    var weight = ""
    var queueType = ""
    var otherComments = ""
    var bmi = ""
    var checkinId = 0
    var temperature = ""
    var bp = ""
    var pulse = ""
    var calculatedBmi = ""
    var qId = ""
    var apptId = ""
    var clientId = ""
    var scheduleDayId = ""
    var preference = 3
    var expectedTime = ""
    var createdTime = ""
    var status = ""
    var isActive = ""
    var apptStartTime = ""
    var businessId = ""
    var businessUserId = ""
    var waitTime = ""
    var travelTime = ""
    
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        firstName <- map["first_name"]
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
        businessId <- map["business_id"]
        businessUserId <- map["is_active"]
        waitTime <- map["waitTime"]
        travelTime <- map["travel_time"]
        
        
    }
}


class FamilyDetail: NSObject, Mappable {
    
    var id = 0
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
    var queueData: [QueueData]?
    
    
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




class FamilyDetailResponse: NSObject, Mappable {
    
    var status = ""
    var message = ""
    var data = [AccountFamilyDetail] ()
    
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
        
    }
}
