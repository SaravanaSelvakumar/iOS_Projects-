//
//  Dashboard + CV.swift
//  Nucleo
//
//  Created by Apzzo on 23/12/21.
//

import UIKit

// MARK: UICollectionView Delegate And Datasource Methods

extension DashboardVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return components.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DashboardCVC", for: indexPath) as! DashboardCVC
        cell.setup(component: components[indexPath.row])
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row {
            case 0:
                if Utils.isPatient() {
                    let nextVC = UpcomingAppointmentsVC.instantiateFromStoryboard()
                    navigationController?.pushViewController(nextVC, animated: true)
                } else if Utils.isDoctor() {
                    let nextVC = OnCallAppointmentVC.instantiateFromStoryboard()
                    navigationController?.pushViewController(nextVC, animated: true)
                } else {
                    let nextVC = AppointmentListVC.instantiateFromStoryboard()
                    navigationController?.pushViewController(nextVC, animated: true)
                }
            case 1:
                if Utils.isPatient() {
                    let nextVC = HospitalListViewController.instantiateFromStoryboard()
                    nextVC.selectedQueue = selectedQueue
                    nextVC.screenType = .favorite
                    navigationController?.pushViewController(nextVC, animated: true)
                } else if Utils.isDoctor() {
                    if CustomUserDefaults.getAdminStatus().lowercased() == "approved" {
                        let nextVC = ConsultationVC.instantiateFromStoryboard()
                        navigationController?.pushViewController(nextVC, animated: true)
                    } else {
                        Utils.showAlert(message: "Admin not approved your account yet to view this page. Please contact the administrator to approve your account.", viewController: self)
                    }
                } else {
                    let nextVC = TokenListVC.instantiateFromStoryboard()
                    navigationController?.pushViewController(nextVC, animated: true)
                }
            case 2:
                if Utils.isPatient() {
                    let nextVC = MyAppointmentVC.instantiateFromStoryboard()
                    nextVC.isCallingFrom = .history
                    navigationController?.pushViewController(nextVC, animated: true)
                } else if Utils.isDoctor() {
                    if CustomUserDefaults.getAdminStatus().lowercased() == "approved" {
                        let nextVC = ShiftPlannerVC.instantiateFromStoryboard()
                        navigationController?.pushViewController(nextVC, animated: true)
                    } else {
                        Utils.showAlert(message: "Admin not approved your account yet to view this page. Please contact the administrator to approve your account.", viewController: self)
                    }
                } else {
                    let nextVC = ShiftPlannerVC.instantiateFromStoryboard()
                    navigationController?.pushViewController(nextVC, animated: true)
                }
            case 3:
                if Utils.isPatient() {
                    let nextVC = SpecialityVC.instantiateFromStoryboard()
                    nextVC.selectedVital = selectedQueue
                    navigationController?.pushViewController(nextVC, animated: true)
                } else if Utils.isDoctor() {
                    let nextVC = VisitTrendVC.instantiateFromStoryboard()
                    navigationController?.pushViewController(nextVC, animated: true)
                } else {
                    let nextVC = PatientVC.instantiateFromStoryboard()
                    nextVC.adminReport = .patient
                    navigationController?.pushViewController(nextVC, animated: true)
                }
            case 4:
                if Utils.isPatient() {
                    let nextVC = BmiVC.instantiateFromStoryboard()
                    navigationController?.pushViewController(nextVC, animated: true)
                } else if Utils.isDoctor() {
                    Utils.showAlert(message: "Comming soon".localized, viewController: self)
                } else {
                    let nextVC = PatientVC.instantiateFromStoryboard()
                    nextVC.adminReport = .employee
                    navigationController?.pushViewController(nextVC, animated: true)
                }
            case 5:
                if Utils.isPatient() {
                    let nextVC = QRCodeVC.instantiateFromStoryboard()
                    navigationController?.pushViewController(nextVC, animated: true)
                } else
                if Utils.isDoctor() {
                    let nextVC = QRCodeVC.instantiateFromStoryboard()
                    navigationController?.pushViewController(nextVC, animated: true)
                } else {
                    let nextVC = PatientVC.instantiateFromStoryboard()
                    nextVC.adminReport = .facility
                    navigationController?.pushViewController(nextVC, animated: true)
                }
            case 6:
                let nextVC = SupportVC.instantiateFromStoryboard()
                navigationController?.pushViewController(nextVC, animated: true)
            case 7:
                let nextVC = ReferalVC.instantiateFromStoryboard()
                navigationController?.pushViewController(nextVC, animated: true)

            case 8:
                if Utils.isPatient() {
//                    videoServiceCall()
                    let nextVC = WebViewVC.instantiateFromStoryboard()
                    nextVC.screenType = .offers
                    navigationController?.pushViewController(nextVC, animated: true)
                } else if Utils.isDoctor() {
                    let nextVC = WebViewVC.instantiateFromStoryboard()
                    nextVC.screenType = .offers
                    navigationController?.pushViewController(nextVC, animated: true)
                } else if Utils.isHospital() {
                    let nextVC = VisitTrendVC.instantiateFromStoryboard()
                    navigationController?.pushViewController(nextVC, animated: true)
                }
            case 9:
                if Utils.isPatient() {
                    let nextVC = WebViewVC.instantiateFromStoryboard()
                    nextVC.screenType = .offers
                    navigationController?.pushViewController(nextVC, animated: true)
                } else if Utils.isHospital() {
                    let nextVC = QRCodeVC.instantiateFromStoryboard()
                    navigationController?.pushViewController(nextVC, animated: true)
                }
            default: break
        }
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        var size = CGSize()
        size = CGSize(width: 100, height: 100)
        return size
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 23
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 23, bottom: 20, right: 23)
    }
}
