//
//  AddEmployee.swift
//  Nucleo
//
//  Created by Apzzo on 18/02/22.
//

import Foundation
import ObjectMapper

class Employee :NSObject,Mappable{
    var bloodGroup       = ""
    var businessId       = ""
    var consultingFees   = ""
    var dateOfBirth      = ""
    var designation      = ""
    var email            = ""
    var emergencyContact = ""
    var emergencyNumber  = ""
    var firstName        = ""
    var gender           = ""
    var lastName         = ""
    var maritalStatus    = ""
    var phoneCode        = ""
    var phoneNumber      = ""
    var speciality       = ""
    var userType         = ""
    
    
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        bloodGroup  <- map["blood_group"]
        businessId  <- map["business_id"]
        consultingFees <- map["consulting_fees"]
        dateOfBirth     <- map["date_of_birth"]
        designation     <- map["designation"]
        email           <- map["email"]
        emergencyContact <- map["emergency_contact"]
        emergencyNumber  <- map["emergency_number"]
        firstName         <- map["first_name"]
        gender          <- map["gender"]
        lastName        <- map["last_name"]
        maritalStatus   <- map["marital_status"]
        phoneCode       <- map["phone_code"]
        phoneNumber     <- map["phone_number"]
        speciality      <- map["speciality"]
        userType        <- map["user_type"]
 
    }

}
class AddEmployeeResponse : NSObject,Mappable {
    var status = ""
    var message = ""
    var addEmployeeDetail = [Employee]()
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        
    }
    
    
}
