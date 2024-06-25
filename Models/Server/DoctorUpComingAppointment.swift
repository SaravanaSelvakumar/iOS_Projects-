//
//  DoctorUpComingAppointment.swift
//  Nucleo
//
//  Created by Apzzo on 07/01/22.
//

import ObjectMapper

class UpcomingAppointmentResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var data = [UpcomingAppointment]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}

class UpcomingAppointment: NSObject, Mappable {
    var amount = ""
    var apptDate = ""
    var apptEndTime = ""
    var apptHistory = ""
    var apptStatus = ""
    var apptTime = ""
    var businessId = ""
    var businessUserId = ""
    var clientApptId = ""
    var clientId = ""
    var createdDate = ""
    var isdeleted = ""
    var orderId = ""
    var patientName = ""
    var paymentStatus = ""
    var scheduleType = ""
    var bloodGroup = ""
    var doctorRegId = ""
    var otherComments = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        amount <- map["amount"]
        apptDate <- map["appt_date"]
        apptEndTime <- map["appt_end_time"]
        apptHistory <- map["appt_history"]
        apptStatus <- map["appt_status"]
        apptTime <- map["appt_time"]
        businessId <- map["business_id"]
        businessUserId <- map["business_user_id"]
        clientApptId <- map["client_appt_id"]
        clientId <- map["client_id"]
        createdDate <- map["created_date"]
        isdeleted <- map["isdeleted"]
        orderId <- map["order_id"]
        patientName <- map["patient_name"]
        paymentStatus <- map["payment_status"]
        scheduleType <- map["schedule_type"]
        bloodGroup <- map["blood_group"]
        doctorRegId <- map["doctor_reg_id"]
        otherComments <- map["other_comments"]
    }
}

class CheckAppointment: NSObject, Mappable {
    var scheduleType = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        scheduleType <- map["schedule_type"]
    }
}

class CheckAppointmentResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var data = [CheckAppointment]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}
