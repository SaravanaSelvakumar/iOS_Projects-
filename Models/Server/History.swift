//
//  ReportPrescription.swift
//  Nucleo
//
//  Created by Apzzo on 07/01/22.
//

import ObjectMapper

class ReasonForVisit: NSObject, Mappable {
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

class Symptoms: NSObject, Mappable {
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

class History: NSObject, Mappable {
    var id = 0
    var businessId = ""
    var businessUserId = ""
    var clientId = ""
    var reasonForVisit = [ReasonForVisit]()
    var symptoms = [Symptoms]()
    var diagnosis = ""
    var otherComments = ""
    var medicineDescription = [MedicineDescriptionList]()
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
    var height = ""
    var weight = ""
    var bmi = ""
    var temperature = ""
    var bp = ""
    var pulse = ""
    var speciality: String?
    var firstName: String?
    var lastName: String?
    var hospitalName: String?

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        businessId <- map["business_id"]
        clientId <- map["client_id"]
        reasonForVisit <- map["reason_for_visit"]
        symptoms <- map["symptoms"]
        diagnosis <- map["diagnosis"]
        otherComments <- map["other_comments"]
        medicineDescription <- map["medicine_description"]
        labTestDetails <- map["lab_test_details"]
        bloodTestDetails <- map["blood_test_details"]
        refillMedicatonDetails <- map["refill_medicaton_details"]
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
        height <- map["height"]
        temperature <- map["temperature"]
        weight <- map["weight"]
        bmi <- map["bmi"]
        pulse <- map["pulse"]
        bp <- map["bp"]
        speciality <- map["name"]
        firstName <- map["first_name"]
        lastName <- map["last_name"]
        hospitalName <- map["business_name"]
    }

    var doctorName: String {
        return (firstName ?? "--") + " " + (lastName ?? "-")
    }
}

class MedicineDescriptionList: NSObject, Mappable {
    var beforeFood = ""
    var days = ""
    var drugType = ""
    var medicineDescription = ""
    var medicineId = ""
    var morning = ""
    var night = ""
    var noon = ""
    var total = ""
    var isSelected = false

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        beforeFood <- map["before_food"]
        days <- map["days"]
        drugType <- map["drugType"]
        medicineDescription <- map["medicine_description"]
        medicineId <- map["medicine_id"]
        morning <- map["morning"]
        night <- map["night"]
        noon <- map["noon"]
        total <- map["total"]
    }
}

class ConsultantHistory: NSObject, Mappable {
    var withInWeek = [History]()
    var withIn30 = [History]()
    var withIn3Months = [History]()
    var withIn6Months = [History]()
    var withInYear = [History]()
    var withIn2Years = [History]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        withInWeek <- map["with_in_week"]
        withIn30 <- map["with_in_30"]
        withIn3Months <- map["with_in_3_months"]
        withIn6Months <- map["with_in_6_months"]
        withInYear <- map["with_in_year"]
        withIn2Years <- map["with_in_2_years"]
    }
}

class HistoryResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var historyDetails = ConsultantHistory()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        historyDetails <- map["consultantHistory"]
    }
}
