//
//  Approval+CV.swift
//  Nucleo
//
//  Created by Apzzo on 15/12/21.
//

import UIKit

// MARK: UICollectionView Delegate And Datasource Methods

extension ApprovalVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return approval.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SpecialityCVC", for: indexPath) as! SpecialityCVC
        cell.approvalSetup(approach: approval[indexPath.row])
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row {
            case 0:
                let nextVC = PrescriptionVC.instantiateFromStoryboard()
                navigationController?.pushViewController(nextVC, animated: true)
            case 1:
                let nextVC = PaymentDetailVC.instantiateFromStoryboard()
                navigationController?.pushViewController(nextVC, animated: true)
            case 2:
                let nextVC = AssessmentVC.instantiateFromStoryboard()
                navigationController?.pushViewController(nextVC, animated: true)
            case 3:
                let nextVC = ExperienceDetailsVC.instantiateFromStoryboard()
                navigationController?.pushViewController(nextVC, animated: true)
            default: break
        }
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        var size = CGSize()
        size = CGSize(width: 158, height: 130)
        return size
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 25, bottom: 0, right: 25)
    }
}
