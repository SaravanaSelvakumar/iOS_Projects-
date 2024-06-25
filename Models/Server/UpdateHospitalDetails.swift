//
//  HospitalDetails.swift
//  Nucleo
//
//  Created by Apzzo on 03/03/22.
//

import Foundation
import ObjectMapper

class Hospital: NSObject, Mappable {
    var id = ""
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
    var workingHours = [WorkingHours]()
    var workingDays = [String]()
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
    var scheduleType = ""
    var createdAt = ""
    var updatedAt = ""
    var subscriptionStatus = ""
    var premiumType = ""
    var subscription = ""
    var paymentStatus = ""
    var expiresAt = ""
    var isDeleted = ""
    var patientVisitCount = ""
    var totalReferralpointsEarned = ""
    var phoneCode = ""
    var dailyInfoIsOpen = ""
    var dailyInfoCycleTime = ""
    var dailyInfoRescheduleTime = ""
    var dailyInfoOpenTime = ""
    var userType = ""
    var workingAllDays = ""

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
        subscription <- map["subscription"]
        paymentStatus <- map["payment_status"]
        expiresAt <- map["expires_at"]
        isDeleted <- map["is_deleted"]
        patientVisitCount <- map["patient_visit_count"]
        totalReferralpointsEarned <- map["total_referralpoints_earned"]
        phoneCode <- map["phone_code"]
        dailyInfoIsOpen <- map["daily_info_is_open"]
        dailyInfoCycleTime <- map["daily_info_cycle_time"]
        dailyInfoRescheduleTime <- map["daily_info_reschedule_time"]
        dailyInfoOpenTime <- map["daily_info_open_time"]
        userType <- map["user_type"]
        workingAllDays <- map["working_all_days"]
       
    }
}

class WorkingHours: NSObject, Mappable {
    var morningOpensAt = ""
    var morningCloseAt = ""
    var eveningOpensAt = ""
    var eveningCloseAt = ""
    var hours24 = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        morningOpensAt <- map["morning_opens_at"]
        morningCloseAt <- map["morning_close_at"]
        eveningOpensAt <- map["evening_opens_at"]
        eveningCloseAt <- map["evening_close_at"]
        hours24 <- map["hours_24"]
    }
}

class HospitalResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var data = [Hospital]()
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}
