//
//  DoctorScheduleList.swift
//  Nucleo
//
//  Created by Apzzo on 07/01/22.
//

import ObjectMapper

class AppointmentHours: NSObject, Mappable {
    var hours = ""
    var isAvailable = false
    var client_id = ""
    var client_appt_id = ""
    var payment_status = ""
    var apptStatus = ""
    var schedule_type = ""

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        hours <- map["hours"]
        isAvailable <- map["isAvailable"]
        client_id <- map["client_id"]
        client_appt_id <- map["client_appt_id"]
        payment_status <- map["payment_status"]
        apptStatus <- map["appt_status"]
        schedule_type <- map["schedule_type"]
    }
}

class AppointmentTiming: NSObject, Mappable {
    var timingName = ""
    var appointmentHours = [AppointmentHours]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        timingName <- map["timingName"]
        appointmentHours <- map["appointmentHours"]
    }
}

class AppointmentShudeule: NSObject, Mappable {
    var appointmentDate = ""
    var appointmentTimings = [AppointmentTiming]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        appointmentDate <- map["appointmentDate"]
        appointmentTimings <- map["appointmentTimings"]
    }
}

class DoctorScheduleRespons: NSObject, Mappable {
    var data = [AppointmentShudeule]()

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        data <- map["data"]
    }
}
