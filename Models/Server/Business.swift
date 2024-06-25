//
//  Business.swift
//  Nucleo
//
//  Created by Apzzo on 05/01/22.
//


import Foundation
import ObjectMapper

class Business: NSObject, Mappable {
    var id = 0
    var userId = ""
    var businessName = ""
    var businessType = ""
    var businessTypeId = ""
    var category = ""
    var faxNumber = ""
    var avatar = ""
    var address1 = ""
    var address2 = ""
    var city = ""
    var state = ""
    var country = ""
    var zipCode = ""
    var geoLocation = ""
    var workingHours = ""
    var workingDays = ""
    var rescheduleTime = ""
    var phoneNumber = ""
    var expectedWaitTime = ""
    var email = ""
    var latitude = ""
    var longitude = ""
    var website = ""
    var speciality = ""
    var facility = ""
    var yearOfBuild = ""
    var profileSummary = ""
    var capacity = ""
    var googleLocId = ""
    var profilePercentage = ""
    var userUniqueId = ""
    var specialityDetail = ""
    var createdAt = ""
    var updatedAt = ""
    var scheduleType = ""
    var subscriptionStatus = ""
    var premiumType = ""
    var cycleTime = ""
    var isOpen = 0
    var openTime = ""
    var maxtime = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        userId <- map["user_id"]
        businessName <- map["business_name"]
        businessType <- map["business_type"]
        businessTypeId <- map["business_type_id"]
        category <- map["category"]
        faxNumber <- map["fax_number"]
        avatar <- map["avatar"]
        address1 <- map["address1"]
        address2 <- map["address2"]
        city <- map["city"]
        state <- map["state"]
        country <- map["country"]
        zipCode <- map["zip_code"]
        geoLocation <- map["geo_location"]
        workingHours <- map["working_hours"]
        workingDays <- map["working_days"]
        rescheduleTime <- map["reschedule_time"]
        phoneNumber <- map["phone_number"]
        expectedWaitTime <- map["expected_wait_time"]
        email <- map["email"]
        latitude <- map["latitude"]
        longitude <- map["longitude"]
        website <- map["website"]
        speciality <- map["speciality"]
        facility <- map["facility"]
        yearOfBuild <- map["year_of_build"]
        profileSummary <- map["profile_summary"]
        capacity <- map["capacity"]
        googleLocId <- map["google_loc_id"]
        profilePercentage <- map["profile_percentage"]
        userUniqueId <- map["user_unique_id"]
        specialityDetail <- map["speciality_detail"]
        createdAt <- map["created_at"]
        updatedAt <- map["updated_at"]
        scheduleType <- map["schedule_type"]
        subscriptionStatus <- map["subscription_status"]
        premiumType <- map["premium_type"]
        cycleTime <- map["cycle_time"]
        isOpen <- map["is_open"]
        openTime <- map["open_time"]
        maxtime <- map["maxtime"]
    }
}

class BusinessNext: NSObject, Mappable {
    var status = ""
    var message = ""
    var countOfRecords = ""
    var data = [Business]()

    required convenience init?(map: Map) {
        self.init()
    }

     func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
        countOfRecords <- map["countOfRecords"]
    }
}

