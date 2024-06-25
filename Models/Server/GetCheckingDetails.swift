//
//  GetCheckingDetails.swift
//  Nucleo
//
//  Created by Apzzo on 07/01/22.
//
import Foundation
import ObjectMapper

class CheckInDetails: NSObject, Mappable {
    var id = ""
    var businessId = 0
    var clientId = ""
    var reasonForVisit = [Reason]()
    var otherComments = ""
    var queueType = 0
    var queueNumber = ""
    var height = ""
    var weight = ""
    var symptoms = [SymptomsLists]()
    var bmi = ""
    var temperature = ""
    var bp = ""
    var pulse = ""
    var calculatedBmi = ""
    var createdAt = 0
    var updatedAt = ""
    var qId = ""
    var fee = ""
    var consultationFee = ""
    var followUpDetails = ""
    var followup = ""
    var pharmacyDetails = ""
    var prescription = ""
    var status = ""
  
    
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        businessId <- map["business_id"]
        clientId <- map["client_id"]
        reasonForVisit <- map["reason_for_visit"]
        otherComments <- map["other_comments"]
        queueType <- map["queue_type"]
        queueNumber <- map["queue_number"]
        height <- map["height"]
        weight <- map["weight"]
        bmi <- map["bmi"]
        temperature <- map["temperature"]
        bp <- map["bp"]
        pulse <- map["pulse"]
        calculatedBmi <- map["calculated_bmi"]
        createdAt <- map["created_at"]
        updatedAt <- map["updated_at"]
        qId <- map["q_id"]
        symptoms <- map["symptoms"]
        status <- map["status"]
        consultationFee <- map["consultation_fee"]
        followup <- map["followup"]
        followUpDetails <- map["follow_up_details"]
        pharmacyDetails <- map["pharmacy_details"]
        prescription <- map["prescription"]
        fee <- map["fee"]
    }
}

class Reason : NSObject,Mappable {
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

class SymptomsLists : NSObject, Mappable {
    
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


class CheckInDetailResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var data = [CheckInDetails]()
 

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}

class CheckInSpecialityResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var data: CheckInDetails?
 

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}
