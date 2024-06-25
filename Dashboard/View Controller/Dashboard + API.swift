//
//  Dashboard + API.swift
//  Nucleo
//
//  Created by Apzzo on 23/12/21.
//

import AVKit
import Charts
import UIKit
extension DashboardVC {
    func queueServiceCall() {
        Utils.showHUD(view: view)
        let param = ["client_id": CustomUserDefaults.getUserId()]
        DataManager.sharedInstance().dashboardServiceCall(parameter: param) { error, response in
            DispatchQueue.main.async { [self] in
                Utils.hideHUD(view: self.view)
                if let error = error {
                    Utils.showAlert(message: error.localizedDescription, viewController: self)
                } else {
                    dashboard = response?.dashBoardDetails ?? []
                    if !dashboard.isEmpty {
                        selectedQueue = dashboard.first!
                        Utils.selectedQueue = dashboard.first!
                        selectQueueTF.text = "\(dashboard.first!.firstName)" + "\(dashboard.first!.lastName)" + " " + "(" + "\(dashboard.first!.apptStartTime)" + " " + "\(dashboard.first!.apptEndTime)" + ")"
                        tokenNoL.text = "\(dashboard.first!.preference)"
                        appointmentTimeL.text = "\(DateUtils.convertToDate(dateString: dashboard.first!.createdTime, format: .timestampFormat, timeZone: TimeZone.current)?.shiftTimeFormat() ?? "")"
                        let waitTimeString = dashboard.first!.waitTime
                        let waitTimeArr = waitTimeString.split(separator: ":")
                        let waitTimeHour = Int(waitTimeArr[0].replacingOccurrences(of: "-", with: "", options: .regularExpression))
                        var waitTimeMinute = Int(waitTimeArr[1])
                        let waitTimeMinuteMultiply = (waitTimeHour ?? 0) * 60
                        waitTimeMinute = waitTimeMinuteMultiply + (waitTimeMinute ?? 0)
                        waitTimeL.text = dashboard.first!.waitTime.contains("-") ? "0 " + "min" : "\(waitTimeMinute ?? 0)" + "min"
                    }
                    selectQueueV.isHidden = dashboard.isEmpty
                    fetchPatientDetailService()
                }
            }
        }
    }

    func videoServiceCall() {
        view.endEditing(true)
        Utils.showHUD(view: view) // load view
        let param = ["name": "guide_video"]
        DataManager.sharedInstance().dashboardVideoServiceCall(parameter: param) { error, response in
            DispatchQueue.main.async { [self] in
                Utils.hideHUD(view: self.view)
                if let error = error {
                    Utils.showAlert(message: error.localizedDescription, viewController: self)
                } else {
                    if let videoDetail = response?.dashBoardVideoDetails {
                        self.video = videoDetail
                        guard let videoUrl = URL(string: video.value) else { return }
                        let player = AVPlayer(url: videoUrl)
                        let playerController = AVPlayerViewController()
                        playerController.player = player
                        playerController.modalPresentationStyle = .formSheet
                        present(playerController, animated: true) {
                            player.play()
                        }
                    }
                }
            }
        }
    }

    func fetchPatientDetailService() {
        Utils.showHUD(view: view)
        let param = ["client_id": CustomUserDefaults.getUserId()]
        DataManager.sharedInstance().getPatientDetailService(parameter: param) { error, response in
            DispatchQueue.main.async { [self] in
                Utils.hideHUD(view: self.view)
                if let error = error {
                    Utils.showAlert(message: error.localizedDescription, viewController: self)
                } else {
                    if let accountDetails = response?.data {
                        Utils.patient = accountDetails
                    }
                    if let primaryUserData = response?.primaryUserData {
                        Utils.setPrimaryUserData(primaryUserData: primaryUserData)
                    }
                }
            }
        }
    }

    func fetchDoctorDetailService() {
        Utils.showHUD(view: view)
        let param = ["business_user_id": CustomUserDefaults.getUserId()]
        DataManager.sharedInstance().getBusinessUserDetails(parameter: param) { error, response in
            DispatchQueue.main.async { [self] in
                Utils.hideHUD(view: self.view)
                if let error = error {
                    Utils.showAlert(message: error.localizedDescription, viewController: self)
                } else {
                    if let doctorDetails = response?.data {
                        Utils.doctor = doctorDetails
                    }
                    fetchDoctorShortDetails()
                }
            }
        }
    }

    func fetchHospitalDetailService() {
        Utils.showHUD(view: view)
        let param = ["business_id": CustomUserDefaults.getUserId()]
        DataManager.sharedInstance().getHospitalServices(parameter: param) { error, response in
            DispatchQueue.main.async { [self] in
                Utils.hideHUD(view: self.view)
                if let error = error {
                    Utils.showAlert(message: error.localizedDescription, viewController: self)
                } else {
                    if let hospitalsdetails = response?.data {
                        Utils.hospitals = hospitalsdetails
                    }
                }
            }
        }
    }

    func fetchDoctorShortDetails() {
        Utils.showHUD(view: view)
        let param = ["business_user_id": CustomUserDefaults.getUserId()]
        DataManager.sharedInstance().doctorShortDetails(parameter: param) { error, response in
            DispatchQueue.main.async { [self] in
                Utils.hideHUD(view: self.view)
                if let error = error {
                    Utils.showAlert(message: error.localizedDescription, viewController: self)
                } else {
                    if let doctorShortDetail = response?.doctorShortDetail {
                        CustomUserDefaults.setSpecification(name: doctorShortDetail.speciality)
                    }
                    if CustomUserDefaults.getSpecification().isEmpty {
                        Utils.showAlert(message: "Please update your speciality and other details.".localized, viewController: self)
                    }
                }
            }
        }
    }
}
