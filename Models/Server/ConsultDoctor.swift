//
//  ConsultDoctor.swift
//  Nucleo
//
//  Created by Apzzo on 24/03/22.
//

import Foundation
import ObjectMapper

class DoctorConsult: NSObject, Mappable {
    var id = ""
    var businessId = ""
    var businessUserId = ""
    var clientId = ""
    var reasonForVisit = [ReasonForVisitList]()
    var symptoms = [SymptomList]()
    var diagnosis = ""
    var otherComments = ""
    var medicineDescription = [MedicineDescriptionDetails]()
    var labTestDetails = ""
    var bloodTestDetails = ""
    var refillMedicatonDetails = ""
    var referralsDetails = ""
    var followUpDetails = ""
    var isActive = ""
    var consultationFee = ""
    var pharmacyDetails = ""
    var createdAt = ""
    var updatedAt = ""
    var fee = ""
    var prescription = ""
    var followup = ""
    var isCompleted = ""
    var otherdata = ""
    var orderId = ""
    var paymentId = ""
    var prescriptionscol = ""
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        businessId <- map["business_id"]
        businessUserId <- map["business_user_id"]
        clientId <- map["client_id"]
        diagnosis <- map["diagnosis"]
        otherComments <- map["other_comments"]
        medicineDescription <- map["medicine_description"]
        labTestDetails <- map["lab_test_details"]
        symptoms <- map["symptoms"]
        reasonForVisit <- map["reason_for_visit"]
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
        otherdata <- map["otherdata"]
        orderId <- map["order_id"]
        paymentId <- map["payment_id"]
        prescriptionscol <- map["prescriptionscol"]
    }
}

class ReasonForVisitList: NSObject, Mappable {
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

class SymptomLists: NSObject, Mappable {
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

class MedicineDescriptionDetails: NSObject, Mappable {
    var medicineDescription = ""
    var drugType = ""
    var medicineId = ""
    var days = ""
    var beforeFood = ""
    var morning = ""
    var noon = ""
    var night = ""
    var total = ""
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
    }
}

class UpdatePrescription: NSObject, Mappable {
    var id = ""
    var businessId = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        businessId <- map["business_id"]
    }
}

class DoctorConsultResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var data: DoctorConsult?
    var prescription: UpdatePrescription?

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
        prescription <- map["prescription"]
    }
}

class Pharmacy: NSObject, Mappable {
    var createdAt = ""
    var id = 0
    var onlinePrescription = ""
    var pharmacyId = ""
    var pharmacyLocation = ""
    var pharmacyName = ""
    var status = ""
    var userId = ""
    var updatedAt = ""
    var drugType = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        createdAt <- map["created_at"]
        id <- map["id"]
        onlinePrescription <- map["online_prescription"]
        pharmacyId <- map["pharmacy_id"]
        pharmacyLocation <- map["pharmacy_location"]
        pharmacyName <- map["pharmacy_name"]
        status <- map["status"]
        updatedAt <- map["updated_at"]
        userId <- map["user_id"]
        drugType <- map["drug_type"]
    }
}

class GetPharmacyResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var data: [Pharmacy]?

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}
