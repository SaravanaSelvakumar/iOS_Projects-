//
//  DashboardCVC.swift
//  Nucleo
//
//  Created by Apzzo on 23/12/21.
//

import UIKit

class DashboardCVC: UICollectionViewCell {
    @IBOutlet var titleL: UILabel!
    @IBOutlet var componentIV: UIImageView!
    @IBOutlet var mainV: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        mainV.setCornerRadius(radius: 9)
    }

    func setup(component: DashboardComponenet) {
        titleL.text = component.name
        componentIV.image = titleL.text == "Notification".localized ? UIImage(systemName: "bell.fill") : UIImage(named: component.image ?? "nil")
    }
}
