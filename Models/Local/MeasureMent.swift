//
//  MeasureMent.swift
//  Nucleo
//
//  Created by Apzzo on 13/12/21.
//

import UIKit

// MARK: - DRAWER ITEM MODEL

class Approach {
    var approachName = ApprovalVC.ApproachType.offers
    var approachImage = ApprovalVC.ApproachType.offers
    var viewColor = ApprovalVC.ApproachType.offers
    var approachTextColor = ApprovalVC.ApproachType.offers
    var approachBorderColor = ApprovalVC.ApproachType.offers
    var isSelected: Bool!

    init(approachName: ApprovalVC.ApproachType, approachImage: ApprovalVC.ApproachType, viewColor: ApprovalVC.ApproachType, approachBorderColor: ApprovalVC.ApproachType, approachTextColor: ApprovalVC.ApproachType, isSelected: Bool) {
        self.approachName = approachName
        self.approachImage = approachImage
        self.viewColor = viewColor
        self.approachBorderColor = approachBorderColor
        self.approachTextColor = approachTextColor
        self.isSelected = isSelected
    }
}
