//
//  GetMasterSymptom.swift
//  Nucleo
//
//  Created by Apzzo on 19/01/22.
//

import Foundation
import ObjectMapper

class Symptom: NSObject, Mappable {
    var id = 0
    var symptomName = ""
    var symptomCategory = ""
    var speciality = ""
    var isSelected = false

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        symptomName <- map["symptom_name"]
        symptomCategory <- map["symptom_category"]
        speciality <- map["speciality"]
    }
}

class CategorySymptom {
    var symptomName = ""
    var isSelected = false

    init(symptomName: String, isSelected: Bool) {
        self.symptomName = symptomName
        self.isSelected = isSelected
    }
}

class MasterSymptomResponse: NSObject, Mappable {
    var status = ""
    var countOfRecords = 0
    var message = ""
    var data = [Symptom]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}

class MasterDisease: NSObject, Mappable {
    var id = 0
    var diseaseName = ""
    var diseaseCategory = ""
    var isSelected = false

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        diseaseName <- map["disease_name"]
        diseaseCategory <- map["disease_category"]
    }
}

class SymptomResponse: NSObject, Mappable {
    var status = ""
    var countOfRecords = 0
    var message = ""
    var data = [Symptom]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}

class MasterDiseaseResponse: NSObject, Mappable {
    var status = ""
    var countOfRecords = 0
    var message = ""
    var data = [MasterDisease]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}

class ChekInQueue: NSObject, Mappable {
    var queueID = ""
    var appointmentID = ""
    var clientID = ""
    var scheduleDayID = ""
    var preference = 0
    var queueTime = ""
    var checkInTime = ""
    var status = ""
    var isActive = ""
    var businessId = ""
    var rescheduleCount = 0
    var tokenNumber = 1
    var createdTime = ""
    var queueOriginalTime = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        queueID <- map["queueID"]
        appointmentID <- map["appointmentID"]
        clientID <- map["clientID"]
        scheduleDayID <- map["scheduleDayID"]
        preference <- map["preference"]
        queueTime <- map["queueTime"]
        checkInTime <- map["checkInTime"]
        status <- map["status"]
        isActive <- map["isActive"]
        businessId <- map["businessId"]
        rescheduleCount <- map["rescheduleCount"]
        tokenNumber <- map["tokenNumber"]
        createdTime <- map["createdTime"]
        queueOriginalTime <- map["queueOriginalTime"]
    }
}

class QueueDataResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var data: [ChekInQueue]?

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}
