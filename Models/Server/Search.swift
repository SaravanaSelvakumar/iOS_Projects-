//
//  Search.swift
//  Nucleo
//
//  Created by Apzzo on 26/01/22.
//

import Foundation
import ObjectMapper
class Search: NSObject, Mappable {
    var address1 = ""
    var address2 = ""
    var avatar = ""
    var businessName = ""
    var businessType = ""
    var businessTypeId = ""
    var capacity = ""
    var category = 0
    var city = ""
    var country = ""
    var createdAt = ""
    var email = ""
    var expectedWaitTime = ""
    var expiresAt = ""
    var facility = ""
    var faxNumber = ""
    var geoLocation = ""
    var googleLocId = ""
    var id = 0
    var isDeleted = ""
    var isOpen = 0
    var latitude = ""
    var longitude = ""
    var maxtime = ""
    var openTime = ""
    var patientVisitCount = 0
    var paymentStatus = ""
    var phoneNumber = ""
    var premiumType = 0
    var profilePercentage = ""
    var profileSummary = ""
    var rescheduleTime = ""
    var scheduleType = ""
    var speciality = ""
    var specialityDetail = ""
    var state = ""
    var subscription = ""
    var subscriptionStatus = ""
    var totalReferralpointsEarned = 0
    var updatedAt = ""
    var userId = ""
    var userUniqueId = ""
    var website = ""
    var workingDays = ""
    var workingHours = HospitalWorkingHour()
    var yearOfBuild = ""
    var zipCode = 0
    var doctorFirstName = ""
    var doctorLastName = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        address1 <- map["address1"]
        address2 <- map["address2"]
        avatar <- map["avatar"]
        businessName <- map["business_name"]
        businessType <- map["business_type"]
        businessTypeId <- map["businessTypeId"]
        capacity <- map["capacity"]
        category <- map["category"]
        businessType <- map["business_type"]
        city <- map["city"]
        country <- map["country"]
        createdAt <- map["created_at"]
        email <- map["email"]
        expectedWaitTime <- map["expected_wait_time"]
        expiresAt <- map["expires_at"]
        facility <- map["facility"]
        faxNumber <- map["fax_number"]
        geoLocation <- map["geo_location"]
        googleLocId <- map["google_loc_id"]
        id <- map["id"]
        isDeleted <- map["is_deleted"]
        isOpen <- map["is_open"]
        latitude <- map["latitude"]
        longitude <- map["longitude"]
        maxtime <- map["maxtime"]
        openTime <- map["open_time"]
        patientVisitCount <- map["patient_visit_count"]
        paymentStatus <- map["payment_status"]
        phoneNumber <- map["phone_number"]
        premiumType <- map["premium_type"]
        profilePercentage <- map["profile_percentage"]
        profileSummary <- map["profile_summary"]
        rescheduleTime <- map["reschedule_time"]
        scheduleType <- map["schedule_type"]
        speciality <- map["speciality"]
        specialityDetail <- map["speciality_detail"]
        state <- map["state"]
        subscription <- map["subscription"]
        subscriptionStatus <- map["subscription_status"]
        totalReferralpointsEarned <- map["total_referralpoints_earned"]
        updatedAt <- map["updated_at"]
        userId <- map["user_id"]
        userUniqueId <- map["user_unique_id"]
        website <- map["website"]
        workingDays <- map["working_days"]
        workingHours <- map["working_hours"]
        yearOfBuild <- map["year_of_build"]
        zipCode <- map["zip_code"]
        doctorFirstName <- map["doctor_first_name"]
        doctorFirstName <- map["doctor_last_name"]
    }
}

class SearchResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var searchDetails = [Search]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        searchDetails <- map["data"]
    }
}
