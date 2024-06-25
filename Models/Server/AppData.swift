//
//  Appdata.swift
//  Nucleo
//
//  Created by Apzzo on 25/01/22.
//

import Foundation
import ObjectMapper

class Specialisation: NSObject, Mappable {
    var id = 0
    var name = ""
    var createdAt = ""
    var updatedAt = ""
   

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        createdAt <- map["created_at"]
        updatedAt <- map["updated_at"]
       
    }
}

class Specialitie: NSObject, Mappable {
    var id = 0
    var name = ""
    var imageUrl = ""
    var isSelected = false
    
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        imageUrl <- map["image_url"]
       
    }
}

class Facility: NSObject, Mappable {
    var id = 0
    var userId = ""
    var facilityId = ""
    var facilityName = ""
    var facilityCategory = ""
    var availability = ""
    var occupied = ""
    var available = ""
    var total = ""
    var createdAt = ""
    var updatedAt = ""
    
    
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        userId <- map["user_id"]
        facilityId <- map["facility_id"]
        facilityName <- map["facility_name"]
        facilityCategory <- map["facility_category"]
        availability <- map["availability"]
        occupied <- map["occupied"]
        available <- map["available"]
        total <- map["total"]
        createdAt <- map["created_at"]
        updatedAt <- map["updated_at"]
       
    }
}

class Category: NSObject, Mappable {
    var id = 0
    var categoryName = ""
    var isActive = ""
    var createdBy = ""
    var createdAt = ""
    var updatedAt = ""
    
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        categoryName <- map["category_name"]
        isActive <- map["is_active"]
        createdBy <- map["created_by"]
        createdAt <- map["created_at"]
        updatedAt <- map["updated_at"]
       
    }
}

class Diseases: NSObject, Mappable {
    var id = 0
    var diseaseName = ""
    
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        diseaseName <- map["disease_name"]
       
    }
}

class Education: NSObject, Mappable {
    var id = 0
    var name = ""
    
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
       
    }
}


class AppDataResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var specializationDetails = [Specialisation]()
    var specialitiesDetails = [Specialitie]()
    var facilitiesDetails = [Facility]()
    var categoryDetails = [Category]()
    var diseasesDetails = [Diseases]()
    var educationsDetails = [Education]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        specializationDetails <- map["specializations"]
        specialitiesDetails <- map["specialities"]
        facilitiesDetails <- map["facilities"]
        categoryDetails <- map["category"]
        diseasesDetails <- map["diseases"]
        educationsDetails <- map["educations"]
    }
}
