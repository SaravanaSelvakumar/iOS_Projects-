//
//  CreateShiftPlanner.swift
//  Nucleo
//
//  Created by Apzzo on 19/01/22.
//

import Foundation
import ObjectMapper

class ShiftBusinessUser: NSObject, Mappable {
    var businessId = ""
    var businessName = ""
    var businessUserId = ""
    var consultingFees = 0
    var createdAt = ""
    var cycleTime = ""
    var doctorArrivalTime = ""
    var doctorExactarrivalTime = ""
    var id = ""
    var isActive = ""
    var isDoctorArrived = ""
    var scheduleType = ""
    var updatedAt = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        businessId <- map["business_id"]
        businessName <- map["business_name"]
        businessUserId <- map["business_user_id"]
        consultingFees <- map["consulting_fees"]
        createdAt <- map["created_at"]
        cycleTime <- map["cycle_time"]
        doctorArrivalTime <- map["doctor_arrival_time"]
        doctorExactarrivalTime <- map["doctor_exactarrivaltime"]
        id <- map["id"]
        isActive <- map["is_active"]
        isDoctorArrived <- map["is_doctor_arrived"]
        scheduleType <- map["schedule_type"]
        updatedAt <- map["updated_at"]
    }
}

class ShiftAppointment: NSObject, Mappable {
    var apptEndTime = ""
    var apptNextAvailable = ""
    var apptStartTime = ""
    var businessId = ""
    var businessName = ""
    var businessUserId = ""
    var createdDate = ""
    var eventId = ""
    var firstName = ""
    var isActive = false
    var lastName = ""
    var scheduleDayId = ""
    var scheduleId = ""
    var scheduleType = ""
    var status = ""

    required convenience init?(map: Map) {
        self.init()
    }
    
    var shiftTime: String {
        return "\(DateUtils.convertToDate(dateString: apptStartTime, format: .shiftTimeFormat, timeZone: TimeZone.current)?.getFormatedDateTimeString() ?? "")" + " " + "\(DateUtils.convertToDate(dateString: apptEndTime, format: .shiftTimeFormat, timeZone: TimeZone.current)?.getFormatedDateTimeString() ?? "")"
    }

    func mapping(map: Map) {
        apptEndTime <- map["appt_end_time"]
        apptNextAvailable <- map["appt_next_available"]
        apptStartTime <- map["appt_start_time"]
        businessId <- map["business_id"]
        businessName <- map["business_name"]
        businessUserId <- map["business_user_id"]
        createdDate <- map["created_date"]
        eventId <- map["event_id"]
        firstName <- map["firstName"]
        isActive <- map["isActive"]
        lastName <- map["lastName"]
        scheduleDayId <- map["schedule_day_id"]
        scheduleId <- map["schedule_id"]
        scheduleType <- map["schedule_type"]
        status <- map["status"]
    }
}


class HopsitalAppointment: NSObject, Mappable {
    var businessId = ""
    var businessName = ""
    var countOfRecords = ""
    var appointments = [ShiftAppointment]()
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        businessName <- map["business_name"]
        businessId <- map["business_id"]
        countOfRecords <- map["countOfRecords"]
        appointments <- map["appointments"]
    }
}

class BusinessView: NSObject, Mappable {
    var businessId = ""
    var businessName = ""
    var firstName = ""
    var lastName = ""
    var appointment = [ShiftAppointment]()
    var selectedAppointment = [ShiftAppointment]()
    var hospitalAppointment = [HopsitalAppointment]()
    var hospitalShiftAppointment : hospitalBusinessUser?
    var doctorFirstName = ""
    var doctorLastName = ""
    var userId = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        businessId <- map["business_id"]
        businessName <- map["business_name"]
        appointment <- map["appointments"]
        hospitalAppointment <- map["appointments"]
        firstName <- map["firstName"]
        lastName <- map["lastName"]
        hospitalShiftAppointment <- map["appoitments"]
        doctorFirstName <- map["first_name"]
        doctorLastName <- map["last_name"]
        userId <- map["user_id"]
    }
    
    var doctorName: String {
        return doctorFirstName + " " + doctorLastName
    }
}

class hospitalBusinessUser: NSObject, Mappable {
    var specialities = ""
    var bloodGroup = ""
    var consultingFees = 0
    var dateOfBirth = ""
    var designation = ""
    var email = ""
    var emergencyNumber = ""
    var firstName = ""
    var gender = ""
    var id = ""
    var isDoctorArrived = ""
    var lastName = ""
    var maritalStatus = 0
    var phoneCode = 0
    var phoneNumber = ""
    var professionalId = ""
    var scheduleType = ""
    var speciality = ""
    var status = ""
    var userId = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        specialities <- map["Specialities"]
        bloodGroup <- map["blood_group"]
        consultingFees <- map["consulting_fees"]
        dateOfBirth <- map["date_of_birth"]
        designation <- map["designation"]
        email <- map["email"]
        emergencyNumber <- map["emergency_number"]
        firstName <- map["first_name"]
        gender <- map["gender"]
        id <- map["id"]
        isDoctorArrived <- map["is_doctor_arrived"]
        lastName <- map["last_name"]
        maritalStatus <- map["marital_status"]
        phoneCode <- map["phone_code"]
        phoneNumber <- map["phone_number"]
        professionalId <- map["professional_id"]
        scheduleType <- map["schedule_type"]
        speciality <- map["speciality"]
        status <- map["status"]
        userId <- map["user_id"]
    }
}

class BusinessUserResponse: NSObject, Mappable {
    var data = [BusinessView]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        data <- map["data"]
    }
}

class ListBusinessResponse: NSObject, Mappable {
    var data = [ShiftBusinessUser]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        data <- map["data"]
    }
}
