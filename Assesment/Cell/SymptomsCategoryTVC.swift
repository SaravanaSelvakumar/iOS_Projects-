//
//  symptomsCategoryTVC.swift
//  Nucleo
//
//  Created by Apzzo on 10/02/22.
//

import UIKit

class SymptomsCategoryTVC: UITableViewCell {
    // MARK: - IBOutlet Declaration
    @IBOutlet var categoryNameL: UILabel!
    @IBOutlet var mainV: UIView!
    
    // MARK: - Override Function

    override func awakeFromNib() {
        super.awakeFromNib()
        mainV.setCornerRadius(radius: 8)
    }
    
    func configureCell(category: CategorySymptom) {
        categoryNameL.text = category.symptomName
        mainV.backgroundColor = NucleoColor(category.isSelected ? .primary : .white).instance
        categoryNameL.textColor = NucleoColor(category.isSelected ? .white : .textPrimary).instance
    }
}
