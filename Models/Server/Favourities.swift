//
//  Favourities.swift
//  Nucleo
//
//  Created by Apzzo on 04/01/22.
//

import ObjectMapper

class Favourite: NSObject, Mappable {
    var businessName = ""
    var businessId = ""
    var expectedWaitTime = ""
    var Address = ""
    var specialityDetail = ""
    var googleLocId = ""
    var workingHours = HospitalWorkingHour()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        workingHours <- map["working_hours"]
        businessName <- map["business_name"]
        businessId <- map["businessId"]
        expectedWaitTime <- map["expected_wait_time"]
        Address <- map["Address"]
        specialityDetail <- map["speciality_detail"]
        googleLocId <- map["google_loc_id"]
    }
}

class FavouritieResponse: NSObject, Mappable {
    var status = ""
    var favoriteDetails = [Favourite]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        favoriteDetails <- map["data"]
    }
}
