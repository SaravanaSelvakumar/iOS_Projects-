//
//  GetCurrentPrescription.swift
//  Nucleo
//
//  Created by Apzzo on 07/01/22.
//

import Foundation
import ObjectMapper


class MedicineDescription: NSObject, Mappable {
    var medicineDescription = ""
    var drugType = ""
    var medicineId = 0
    var days = 0
    var beforeFood = 0
    var morning = 0
    var noon = 0
    var night = 0
    var total = 0
    var unit = ""
    
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        medicineDescription <- map["medicine_description"]
        drugType <- map["drug_type"]
        medicineId <- map["medicine_id"]
        days <- map["days"]
        beforeFood <- map["before_food"]
        morning <- map["morning"]
        noon <- map["noon"]
        night <- map["night"]
        total <- map["total"]
        unit <- map["unit"]
    }
}


class PrescriptionSymptom: NSObject, Mappable {
    var value = ""
    var label = ""
    
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        value <- map["value"]
        label <- map["label"]
    }
}


class CurrentPrescription: NSObject, Mappable {
    var id = 0
    var businessId = ""
    var businessUserId = ""
    var clientId = ""
    var reasonForVisit: [ReasonForVisitList]?
    var symptoms: [PrescriptionSymptom]?
    var diagnosis = ""
    var otherComments = ""
    var medicineDescription = [MedicineDescription]()
    var labTestDetails = ""
    var bloodTestDetails = ""
    var refillMedicatonDetails = ""
    var referralsDetails = ""
    var followUpDetails = ""
    var isActive = 0
    var consultationFee = ""
    var pharmacyDetails = ""
    var createdAt = ""
    var updatedAt = ""
    var fee = 0
    var prescription = 0
    var followup = 0
    var isCompleted = 0
    
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        businessId <- map["business_id"]
        businessUserId <- map["business_user_id"]
        clientId <- map["client_id"]
        reasonForVisit <- map["reason_for_visit"]
        symptoms <- map["symptoms"]
        diagnosis <- map["diagnosis"]
        otherComments <- map["other_comments"]
        medicineDescription <- map["medicine_description"]
        labTestDetails <- map["lab_test_details"]
        bloodTestDetails <- map["blood_test_details"]
        refillMedicatonDetails <- map["refill_medicaton_details"]
        referralsDetails <- map["referrals_details"]
        followUpDetails <- map["follow_up_details"]
        isActive <- map["is_active"]
        consultationFee <- map["consultation_fee"]
        pharmacyDetails <- map["pharmacy_details"]
        createdAt <- map["created_at"]
        updatedAt <- map["updated_at"]
        fee <- map["fee"]
        prescription <- map["prescription"]
        followup <- map["followup"]
        isCompleted <- map["is_completed"]

    
       
    }
}


class CurrentPrescriptionResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var data: [CurrentPrescription]?
   
 

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}
