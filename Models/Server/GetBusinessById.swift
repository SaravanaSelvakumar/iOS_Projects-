//
//  GetBusinessById.swift
//  Nucleo
//
//  Created by Apzzo on 07/01/22.
//

import Foundation
import ObjectMapper

class HospitalAccountDetail: NSObject, Mappable {
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
    var workingHour: HospitalWorkingHour?
    var workingDays = [String]()
    var rescheduleTime = ""
    var phoneNumber = ""
    var expectedWaitTime = ""
    var email = ""
    var latitude = ""
    var longitude = ""
    var website = ""
    var speciality: String?
    var facility: String?
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
    var phoneCode = ""
    var dailyInfoIsOpen = 0
    var dailyInfoCycleTime = ""
    var dailyInfoRescheduleTime = ""
    var dailyInfoOpenTime = ""
    var paymentStatus = ""
    var expiresAt = ""
    var isDelete = ""
    var patientvisitCount = ""
    var totalReferralPointsEarned = ""
    var paymentDetails = [PaymentDetails]()
    var specialityArray = [String]()
    var facilityArray = [String]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        userId <- map["user_id"]
        paymentStatus <- map["payment_status"]
        expiresAt <- map["expires_at"]
        isDelete <- map["is_deleted"]
        patientvisitCount <- map["patient_visit_count"]
        totalReferralPointsEarned <- map["total_referralpoints_earned"]
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
        workingHour <- map["working_hours"]
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
        subscriptionStatus <- map["subscription"]
        premiumType <- map["premium_type"]
        phoneCode <- map["phone_code"]
        dailyInfoIsOpen <- map["daily_info_is_open"]
        dailyInfoCycleTime <- map["daily_info_cycle_time"]
        dailyInfoRescheduleTime <- map["daily_info_reschedule_time"]
        dailyInfoOpenTime <- map["daily_info_open_time"]
        specialityArray <- map["speciality_array"]
        facilityArray <- map["facility_array"]
        paymentDetails <- map["payment_details"]
    }
}

class HospitalWorkingHour: NSObject, Mappable {
    var morningOpensAt = ""
    var morningCloseAt = ""
    var eveningOpensAt = ""
    var eveningCloseAt = ""
    var hours24 = false

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

class HospitalAccountResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var data: [HospitalAccountDetail]?

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}
