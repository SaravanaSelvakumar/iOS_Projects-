//
//  DoctorsAppointment.swift
//  Nucleo
//
//  Created by Apzzo on 06/01/22.
//
import Foundation
import ObjectMapper

class DoctorAppointment: NSObject, Mappable {
    var businessId = ""
    var eventName = ""
    var scheduleDayId = ""
    var starttime = ""
    var endtime = ""
    var isSelected = false
    var isImageDisable = false
    var waitTime = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        scheduleDayId <- map["schedule_day_id"]
        eventName <- map["event_name"]
        starttime <- map["starttime"]
        endtime <- map["endtime"]
        waitTime <- map["wait_time"]
        businessId <- map["business_id"]
    }
}

class DoctorAvailability: NSObject, Mappable {
    var apptId = ""
    var scheduleId = ""
    var businessId = ""
    var businessName = ""
    var businessUserId = ""
    var doctorName = ""
    var scheduleType = ""
    var isDoctorArrived = ""
    var doctorAppointments = [DoctorAppointment]()
    var isSelected = false
    var docFirstName = ""
    var docLastName = ""
    var doctorExactarrivalTime = ""
    var nStatus = ""
    var type = ""
    var speciality = ""
    var qualification = ""
    
    
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        apptId <- map["appt_id"]
        scheduleId <- map["schedule_id"]
        businessId <- map["business_id"]
        businessUserId <- map["business_user_id"]
        doctorName <- map["doctor_name"]
        scheduleType <- map["schedule_type"]
        isDoctorArrived <- map["is_doctor_arrived"]
        doctorAppointments <- map["doctor_Appointments"]
        docFirstName <- map["doc_first_name"]
        docLastName <- map["doc_last_name"]
        businessName <- map["business_name"]
        doctorExactarrivalTime <- map["doctor_exactarrivaltime"]
        nStatus <- map["n_status"]
        type <- map["type"]
        speciality <- map["speciality_name"]
        qualification <- map["qualification"]
        
    }
}

class doctorAvailabilityResponse: NSObject, Mappable {
    var status = 0
    var message = ""
    var data = [DoctorAvailability]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}
