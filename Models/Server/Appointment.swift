//
//  Appointment.swift
//  Nucleo
//
//  Created by Apzzo on 24/01/22.
//

import Foundation
import ObjectMapper

class Appointment: NSObject, Mappable {
    var name = ""
    var docName = ""
    var docLastName = ""
    var docFirstName = ""
    var patientLastName = ""
    var patientFirstName = ""
    var businessName = ""
    var paymentId = ""
    var orderId = ""
    var amount = ""
    var createdDate = ""
    var apptHistory = ""
    var isDeleted = false
    var apptStatus = ""
    var scheduleType = ""
    var paymentStatus = ""
    var apptEndTime = ""
    var apptTime = ""
    var apptDate = ""
    var businessUserId = ""
    var businessId = ""
    var clientId = ""
    var clientApptId = ""
    var doctorRegId = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        name <- map["name"]
        docName <- map["doc_name"]
        docLastName <- map["doc_last_name"]
        docFirstName <- map["doc_first_name"]
        docFirstName <- map["doc_first_name"]
        patientLastName <- map["patient_last_name"]
        businessName <- map["business_name"]
        paymentId <- map["payment_id"]
        orderId <- map["order_id"]
        amount <- map["amount"]
        createdDate <- map["created_date"]
        apptHistory <- map["appt_history"]
        isDeleted <- map["isdeleted"]
        apptStatus <- map["appt_status"]
        scheduleType <- map["schedule_type"]
        paymentStatus <- map["payment_status"]
        apptEndTime <- map["appt_end_time"]
        apptTime <- map["appt_time"]
        apptDate <- map["appt_date"]
        businessUserId <- map["business_user_id"]
        businessId <- map["business_id"]
        clientId <- map["client_id"]
        clientApptId <- map["client_appt_id"]
        doctorRegId <- map["doctor_reg_id"]
        patientFirstName <- map["patient_first_name"]
    }
}

class AppointmentResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var appointmentDetails = [Appointment]()
    var appointmentFamilyDetails = [Appointment]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        appointmentDetails <- map["data"]
        appointmentFamilyDetails <- map["famiy_data"]
    }
}

class NotificationData: NSObject, Mappable {
    var name = ""
    var docName = ""
    var docLastName = ""
    var docFirstName = ""
    var patientLastName = ""
    var patientFirstName = ""
    var businessName = ""
    var paymentId = ""
    var orderId = ""
    var amount = ""
    var createdDate = ""
    var apptHistory = ""
    var isDeleted = false
    var apptStatus = ""
    var scheduleType = ""
    var paymentStatus = ""
    var apptEndTime = ""
    var apptTime = ""
    var apptDate = ""
    var businessUserId = ""
    var businessId = ""
    var clientId = 0
    var createdat = ""
    var id = ""
    var link = ""
    var message = ""
    var messageFrom = ""
    var messageTo = ""
    var msfFirstName = ""
    var msfLlastName = ""
    var read = ""
    var updatedAt = ""
    var userType = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        name <- map["name"]
        docName <- map["doc_name"]
        docLastName <- map["doc_last_name"]
        docFirstName <- map["doc_first_name"]
        docFirstName <- map["doc_first_name"]
        patientLastName <- map["patient_last_name"]
        businessName <- map["business_name"]
        paymentId <- map["payment_id"]
        orderId <- map["order_id"]
        amount <- map["amount"]
        createdDate <- map["created_date"]
        apptHistory <- map["appt_history"]
        isDeleted <- map["isdeleted"]
        apptStatus <- map["appt_status"]
        scheduleType <- map["schedule_type"]
        paymentStatus <- map["payment_status"]
        apptEndTime <- map["appt_end_time"]
        apptTime <- map["appt_time"]
        apptDate <- map["appt_date"]
        businessUserId <- map["business_user_id"]
        businessId <- map["business_id"]
        clientId <- map["client_id"]
        id <- map["id"]
        link <- map["link"]
        message <- map["message"]
        messageFrom <- map["message_from"]
        messageTo <- map["message_to"]
        msfFirstName <- map["msf_first_name"]
        msfLlastName <- map["msf_last_name"]
        read <- map["read"]
        updatedAt <- map["updated_at"]
        userType <- map["user_type"]
        createdat <- map["created_at"]
    }

    var displayDate: Date {
        return DateUtils.convertToDate(dateString: createdat, format: .timestampFormat, timeZone: TimeZone.current) ?? Date()
    }
}

class NotificationResponse: NSObject, Mappable {
    var status = ""
    var message = ""
    var notificationDetails = [NotificationData]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        notificationDetails <- map["data"]
    }
}
