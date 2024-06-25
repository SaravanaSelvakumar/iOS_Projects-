//
//  CreateQueue.swift
//  Nucleo
//
//  Created by Apzzo on 19/01/22.
//


import Foundation
import ObjectMapper


class CreateQueue: NSObject, Mappable {
    var status = ""
    var message = ""
    var qId = ""
    
    
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        qId <- map["qId"]
    }
}


class CreateQueueResponse: NSObject, Mappable {
    var data = [CreateQueue]()
   
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        data <- map["data"]
    }
}

class OnlineResponse: NSObject, Mappable {
    var data = [String]()
   
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        data <- map["data"]
    }
}

