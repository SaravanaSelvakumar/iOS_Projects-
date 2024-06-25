//
//  Treatment.swift
//  Nucleo
//
//  Created by Apzzo on 04/12/21.
//

import UIKit

// MARK: - DRAWER ITEM MODEL

class Treatment {
    var treatmentName = SpecialitiesVC.TreatMentType.brainAndNerves
    var treatmentImage = SpecialitiesVC.TreatMentType.brainAndNerves
    var viewColor = SpecialitiesVC.TreatMentType.brainAndNerves
    var treatmentTextColor = SpecialitiesVC.TreatMentType.brainAndNerves
    var isSelected: Bool!

    init(treatmentName: SpecialitiesVC.TreatMentType, treatmentImage: SpecialitiesVC.TreatMentType, viewColor: SpecialitiesVC.TreatMentType, treatmentTextColor: SpecialitiesVC.TreatMentType, isSelected: Bool) {
        self.treatmentName = treatmentName
        self.treatmentImage = treatmentImage
        self.viewColor = viewColor
        self.treatmentTextColor = treatmentTextColor
        self.isSelected = isSelected
    }
}
