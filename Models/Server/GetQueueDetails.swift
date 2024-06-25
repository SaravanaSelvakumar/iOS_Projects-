//
//  GetQueueDetails.swift
//  Nucleo
//
//  Created by Apzzo on 06/04/22.
//

import Foundation
import ObjectMapper

class GetQueueDetails: NSObject, Mappable {
    var nBusinessId = ""
    var nScheduleDayId = ""
    var nBusinessUserId = ""
    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        nBusinessId <- map["n_business_id"]
        nScheduleDayId <- map["n_schedule_day_id"]
        nBusinessUserId <- map["n_business_user_id"]
    }
}
