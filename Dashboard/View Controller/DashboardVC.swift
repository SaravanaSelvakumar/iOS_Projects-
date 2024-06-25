//
//  DashboardVC.swift
//  Nucleo
//
//  Created by Apzzo on 23/12/21.
//

import TwilioVideo
import UIKit

class DashboardVC: BaseViewController {
    static let name = "DashboardVC"
    static let storyBoard = "Dashboard"

    /// The caller of this class does not need to know how we instantiate it.
    /// We simply return the instantiated class to the caller and they invoke it how they want
    /// If the as! fails, it will fail upon immediate testing
    class func instantiateFromStoryboard() -> DashboardVC {
        let vc = UIStoryboard(name: DashboardVC.storyBoard, bundle: nil).instantiateViewController(withIdentifier: DashboardVC.name) as! DashboardVC
        return vc
    }

    // MARK: - IBOutlet Declaration

    @IBOutlet var titleV: [UIView]!
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var tokenNoL: UILabel!
    @IBOutlet var appointmentTimeL: UILabel!
    @IBOutlet var waitTimeL: UILabel!
    @IBOutlet var selectQueueV: UIView!
    @IBOutlet var selectQueueTF: UITextField!
    @IBOutlet var greetingL: UILabel!
    @IBOutlet var doctorHiddenV: [UIView]!
    @IBOutlet var hospitalHiddenV: [UIView]!
    @IBOutlet var bookApptV: UIView!

    // MARK: - Variable Declaration

    var clientShortDetail = [ClientDetail]()

    var components = [DashboardComponenet]()
    var dashboard = [Dashboard]()
    var selectedQueue = Dashboard()
    var video = Video()
    var navigationDrawer = NavigationDrawerVC()

    // MARK: - Override Function

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setComponentDatas()
        uiPickerSetups()
        registerCollectionViewCells()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        Utils.isPatient() ? queueServiceCall() : Utils.isDoctor() ? fetchDoctorDetailService() : fetchHospitalDetailService()
    }

    override func donePressed() {
        super.donePressed()
        if activeTextField == selectQueueTF {
            guard !dashboard.isEmpty else { return }
            if pickerView.tag == -1 {
                selectQueueTF.text = "\(dashboard.first!.firstName)" + "\(dashboard.first!.lastName)" + " " + "(" + "\(dashboard.first!.apptStartTime)" + " " + "\(dashboard.first!.apptEndTime)" + ")"

            } else {
//                selectQueueTF.text = "\(dashboard[pickerView.tag].firstName)" + "\(dashboard[pickerView.tag].lastName)" + " " + "(" + "\(dashboard[pickerView.tag].createdTime)" + " " + "-" + " " + "\(dashboard[pickerView.tag].expectedTime)" + ")"
                selectQueueTF.text = "\(dashboard[pickerView.tag].firstName)" + "\(dashboard[pickerView.tag].lastName)" + " " + "(" + "\(dashboard.first!.apptStartTime)" + " " + "\(dashboard.first!.apptEndTime)" + ")"
            }
            selectedQueue = pickerView.tag == -1 ? dashboard.first! : dashboard[pickerView.tag]
            Utils.selectedQueue = pickerView.tag == -1 ? dashboard.first! : dashboard[pickerView.tag]
            tokenNoL.text = "\(selectedQueue.preference)"
            appointmentTimeL.text = "\(DateUtils.convertToDate(dateString: selectedQueue.createdTime, format: .timestampFormat, timeZone: TimeZone.current)?.getFormatedDateTimeString() ?? "")"
            let waitTimeString = selectedQueue.waitTime
            let waitTimeArr = waitTimeString.split(separator: ":")
            let waitTimeHour = Int(waitTimeArr[0].replacingOccurrences(of: "-", with: "", options: .regularExpression))
            var waitTimeMinute = Int(waitTimeArr[1])
            let waitTimeMinuteMultiply = (waitTimeHour ?? 0) * 60
            waitTimeMinute = waitTimeMinuteMultiply + (waitTimeMinute ?? 0)
            waitTimeL.text = selectedQueue.waitTime.contains("-") ? "0 " + "min" : "\(waitTimeMinute ?? 0)" + "min"
            activeTextField = nil
//            appointmentTimeL.text =  "\(selectedQueue.createdTime)" + " " + "\(selectedQueue.expectedTime)"
        }
    }

    // MARK: - Variable Declaration

    var categoryList = ["Hospital".localized, "Doctor".localized, "Patient".localized]
    var describeIssuesList = ["Password locked".localized, "Queue not working".localized, "Not able to sign up".localized]
    var pickerView = UIPickerView()
    var activeTextField: UITextField?

    // MARK: - Register Collection View Cell

    @IBAction func actionOnSearchB(_ sender: UIButton) {
        if Utils.isPatient() {
            let nextVC = SpecialitiesVC.instantiateFromStoryboard()
            nextVC.selectedQueue = selectedQueue
            nextVC.accountScreenType = .search
            navigationController?.pushViewController(nextVC, animated: true)
        }
    }

    @IBAction func actionOnTokenNo(_ sender: UIButton) {
        let nextVC = AppointmentFixVC.instantiateFromStoryboard()
        nextVC.selectedQueue = selectedQueue
        navigationController?.pushViewController(nextVC, animated: true)
    }

    func registerCollectionViewCells() {
        let collectionViewNib = UINib(nibName: "DashboardCVC", bundle: nil)
        collectionView.register(collectionViewNib, forCellWithReuseIdentifier: "DashboardCVC")
    }

    // MARK: - Supporting Function

    /// It will enhance to the user interface
    func setupViews() {
        bookApptV.isHidden = Utils.isPatient() ? false : true
        titleV.forEach({ $0.setCornerRadius(radius: 9) })
        setNavigation(title: "Dashboard".localized, imageName: "NavigationDrawerImage", backBtn: false)
        navigationView.rightBarFirstV.isHidden = false
        navigationView.rightBarFirstL.text = "       ".localized
        if Utils.isPatient() {
            navigationView.rightBarSecondV.isHidden = false
            navigationView.rightBarSecondL.text = "            ".localized
            navigationView.rightBarSecondIV.image = UIImage(systemName: "bell.fill")
        }
        navigationView.rightBarFirstIV.image = UIImage(systemName: "person")

        navigationView.rightBarFirstIV.tintColor = .white
        navigationView.rightBarSecondIV.tintColor = .white
        greetingL.text = "Hi".localized + " " + "\(CustomUserDefaults.getUserFirstName())" + " " + "\(CustomUserDefaults.getUserLastName())"
        rightNavigationB()
        leftNavigationB()

        if Utils.isDoctor() {
            doctorHiddenV.forEach({ $0.isHidden = true })
        } else if Utils.isHospital() {
            hospitalHiddenV.forEach({ $0.isHidden = true })
        }
    }

    func setComponentDatas() {
        if Utils.isPatient() {
            components.append(DashboardComponenet(name: "Appointment".localized, image: "appointmentIcon"))
            components.append(DashboardComponenet(name: "Favorites".localized, image: "favIcon"))
            components.append(DashboardComponenet(name: "History".localized, image: "historyIcon"))
            components.append(DashboardComponenet(name: "Vitals".localized, image: "vitalsIcon"))
            components.append(DashboardComponenet(name: "BMI".localized, image: "bmiIcon"))
            components.append(DashboardComponenet(name: "QR Code".localized, image: "QRCodeIcon"))
            components.append(DashboardComponenet(name: "Support".localized, image: "supportIcon"))
            components.append(DashboardComponenet(name: "Referral".localized, image: "referralIcon"))
//            components.append(DashboardComponenet(name: "Video".localized, image: "Pulse_Image"))
            components.append(DashboardComponenet(name: "Offers".localized, image: "offerIcon"))
        } else if Utils.isDoctor() {
            components.append(DashboardComponenet(name: "On Call Appt".localized, image: "appointmentIcon"))
            components.append(DashboardComponenet(name: "Consultation".localized, image: "consultationIcon"))
            components.append(DashboardComponenet(name: "Shift Planner".localized, image: "shiftPlannerIcon"))
            components.append(DashboardComponenet(name: "Visit trend".localized, image: "visitTrendIcon"))
            components.append(DashboardComponenet(name: "Approvals".localized, image: "approvalIcon"))
            components.append(DashboardComponenet(name: "QR Code".localized, image: "QRCodeIcon"))
            components.append(DashboardComponenet(name: "Support".localized, image: "supportIcon"))
            components.append(DashboardComponenet(name: "Referral".localized, image: "referralIcon"))
            components.append(DashboardComponenet(name: "Offers".localized, image: "offerIcon"))
        } else {
            components.append(DashboardComponenet(name: "Appointment List".localized, image: "appointmentListIcon"))
            components.append(DashboardComponenet(name: "Token list".localized, image: "tokenListIcon"))
            components.append(DashboardComponenet(name: "Shift Planner".localized, image: "shiftPlannerIcon"))
            components.append(DashboardComponenet(name: "Patient list".localized, image: "PatientListIcon"))
            components.append(DashboardComponenet(name: "Employee list".localized, image: "employeeList"))
            components.append(DashboardComponenet(name: "Facility list".localized, image: "facilityListIcon"))
            components.append(DashboardComponenet(name: "Support".localized, image: "supportIcon"))
            components.append(DashboardComponenet(name: "Referral".localized, image: "referralIcon"))
            components.append(DashboardComponenet(name: "visit trend".localized, image: "visitTrendIcon"))
            components.append(DashboardComponenet(name: "QR Code".localized, image: "QRCodeIcon"))
        }
    }

    func rightNavigationB() {
        navigationView.actionOnRightFirstNavigationButton = { [weak self] in
            let nextVC = WelcomeVC.instantiateFromStoryboard()
            nextVC.accountScreenType = .dashboard
            self?.navigationController?.pushViewController(nextVC, animated: true)
        }
    }

    func leftNavigationB() {
        if Utils.isHospital() || Utils.isPatient() {
            navigationView.actionOnRightSecondNavigationButton = { [weak self] in
                let nextVC = NotificationVC.instantiateFromStoryboard()
                self?.navigationController?.pushViewController(nextVC, animated: true)
            }
        }
    }

    func uiPickerSetups() {
        selectQueueTF.inputView = pickerView
        pickerView.dataSource = self
        pickerView.delegate = self
        selectQueueTF.inputAccessoryView = getToolBar()
        pickerView.reloadAllComponents()
    }
}

class DashboardComponenet {
    var name: String?
    var image: String?

    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}

// MARK: - UIPicker Delegate & DataSource Method

extension DashboardVC: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dashboard.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(dashboard[row].firstName)" + "\(dashboard[row].lastName)" + " " + "(" + "\(dashboard[row].createdTime)" + " " + "\(dashboard[row].expectedTime)" + ")"
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerView.tag = row
    }
}

// MARK: - Textfield Delegate Method

extension DashboardVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == selectQueueTF {
            pickerView.tag = -1
            activeTextField = textField
            pickerView.selectRow(0, inComponent: 0, animated: true)
            pickerView.reloadAllComponents()
        }
    }
}
