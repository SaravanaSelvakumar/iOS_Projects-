//
//  Prescription.swift
//  Nucleo
//
//  Created by Apzzo on 10/02/22.
//

import UIKit
import ObjectMapper
class DrugType: NSObject, Mappable {
    var id = 0
    var drugType = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        drugType <- map["drug_type"]
    }
}

class DrugTypeResponse: NSObject, Mappable {
    var status = ""
    var countOfRecords = 0
    var message = ""
    var data = [DrugType]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}

class MasterDrug: NSObject, Mappable {
    var activeIngredients = ""
    var drugCategory = ""
    var drugName = ""
    var drugType = ""
    var genericName = ""
    var id = 0
    var manufacturer = 0
    var unitOfMeasure = ""
    var isSelected = false
    var boforeFoodSelected = false
    var isFromServer = false
    var night = ""
    var noon = ""
    var morning = ""
    var beforeFood = false
    var total = ""
    var days = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        activeIngredients <- map["active_ingredients"]
        drugCategory <- map["drug_category"]
        drugName <- map["drug_name"]
        drugType <- map["drug_type"]
        genericName <- map["generic_name"]
        id <- map["id"]
        manufacturer <- map["manufacturer"]
        unitOfMeasure <- map["unit_of_measure"]
    }
}

class MasterDrugResponse: NSObject, Mappable {
    var status = ""
    var countOfRecords = 0
    var message = ""
    var data = [MasterDrug]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}

class SearchDrugResponse: NSObject, Mappable {
    var status = ""
    var countOfRecords = 0
    var message = ""
    var data = [MasterDrug]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}
