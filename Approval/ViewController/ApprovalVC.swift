//
//  ApprovalVC.swift
//  Nucleo
//
//  Created by Apzzo on 15/12/21.
//

import UIKit

class ApprovalVC: BaseViewController {
    static let name = "ApprovalVC"
    static let storyBoard = "Approval"

    /// The caller of this class does not need to know how we instantiate it.
    /// We simply return the instantiated class to the caller and they invoke it how they want
    /// If the as! fails, it will fail upon immediate testing
    class func instantiateFromStoryboard() -> ApprovalVC {
        let vc = UIStoryboard(name: ApprovalVC.storyBoard, bundle: nil).instantiateViewController(withIdentifier: ApprovalVC.name) as! ApprovalVC
        return vc
    }
    // MARK: - IBOutlet Declaration

    @IBOutlet var collectionView: UICollectionView!
    
    // MARK: - Variable Declaration

    var approval = [Approach]()

    // MARK: - Override Function

    override func viewDidLoad() {
        super.viewDidLoad()
        registerCollectionViewCells()
        setCollectionViewData()
        setupViews()
    }
    
    // MARK: - Register Collection View Cell

    func registerCollectionViewCells() {
        let collectionViewNib = UINib(nibName: "SpecialityCVC", bundle: nil)
        collectionView.register(collectionViewNib, forCellWithReuseIdentifier: "SpecialityCVC")
    }

    // MARK: - Supporting Function

    /// It will enhance to the user interface
    func setupViews() {
        setNavigation(title: "", imageName: "NavigationDrawerImage", backBtn: true)
    }
    
    func setCollectionViewData() {
        approval.append(Approach(approachName: .appointment, approachImage: .appointment, viewColor: .appointment, approachBorderColor: .appointment, approachTextColor: .appointment, isSelected: false))
        approval.append(Approach(approachName: .consultation, approachImage: .consultation, viewColor: .consultation, approachBorderColor: .consultation, approachTextColor: .consultation, isSelected: false))
        approval.append(Approach(approachName: .visitTrend, approachImage: .visitTrend, viewColor: .visitTrend, approachBorderColor: .visitTrend, approachTextColor: .visitTrend, isSelected: false))
        approval.append(Approach(approachName: .shiftPlanner, approachImage: .shiftPlanner, viewColor: .shiftPlanner, approachBorderColor: .shiftPlanner, approachTextColor: .shiftPlanner, isSelected: false))
        approval.append(Approach(approachName: .temperature, approachImage: .temperature, viewColor: .temperature, approachBorderColor: .temperature, approachTextColor: .temperature, isSelected: false))
        approval.append(Approach(approachName: .approval, approachImage: .approval, viewColor: .approval, approachBorderColor: .approval, approachTextColor: .approval, isSelected: false))
        approval.append(Approach(approachName: .support, approachImage: .support, viewColor: .support, approachBorderColor: .support, approachTextColor: .support, isSelected: false))
        approval.append(Approach(approachName: .qrcode, approachImage: .qrcode, viewColor: .qrcode, approachBorderColor: .qrcode, approachTextColor: .qrcode, isSelected: false))
        approval.append(Approach(approachName: .offers, approachImage: .offers, viewColor: .offers, approachBorderColor: .offers, approachTextColor: .offers, isSelected: false))
        
      
        collectionView.reloadData()
    }
}
