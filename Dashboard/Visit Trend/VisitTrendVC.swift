//
//  VisitTrendVCViewController.swift
//  Nucleo
//
//  Created by Apzzo on 19/02/22.
//

import Charts
import TinyConstraints
import UIKit

class VisitTrendVC: UIViewController {
    static let name = "VisitTrendVC"
    static let storyBoard = "VisitTrend"

    class func instantiateFromStoryboard() -> VisitTrendVC {
        let vc = UIStoryboard(name: VisitTrendVC.storyBoard, bundle: nil).instantiateViewController(withIdentifier: VisitTrendVC.name) as! VisitTrendVC
        return vc
    }

    // MARK: -  IBOutlet variable

    @IBOutlet var lineChartView: LineChartView!
    @IBOutlet var navigationV: UIView!

    // MARK: - Variable Declaration

    var visitTrend = [String: Double]()
    var months = [String]()
    var unitsSold = [Double]()

    // MARK: - Override Function

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupViews()
        getVisitTrendServiceCall()
        lineChartView.backgroundColor = .white
        dataSet(dataPoints: months, values: unitsSold)
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeLeft
    }

    override var shouldAutorotate: Bool {
        return true
    }

    func setupViews() {
//        setNavigation(title: "Visit Trends", imageName: "back_arrow", backBtn: true)
        navigationV.clipsToBounds = true
        navigationV.layer.cornerRadius = 40
        navigationV.setCornerRadius(radius: 20)
    }

    @IBAction func actionOnBack() {
        let value = UIInterfaceOrientation.portrait.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
        navigationController?.popViewController(animated: true)
    }

//    let chatDataEntry:
    func dataSet(dataPoints: [String], values: [Double]) {
        var dataEntries: [ChartDataEntry] = []
        for i in 0 ..< dataPoints.count {
            let dataEntry = ChartDataEntry(x: Double(i), y: values[i], data: dataPoints[i] as AnyObject)
            dataEntries.append(dataEntry)
        }
        let chartDataSet = LineChartDataSet(entries: dataEntries, label: "")
        chartDataSet.circleRadius = 5
        chartDataSet.circleHoleRadius = 2
        chartDataSet.drawValuesEnabled = false

        let chartData = LineChartData(dataSets: [chartDataSet])

        lineChartView.data = chartData

        lineChartView.xAxis.valueFormatter = IndexAxisValueFormatter(values: months)
        lineChartView.xAxis.labelPosition = .bottom
        lineChartView.xAxis.drawGridLinesEnabled = false
        lineChartView.xAxis.avoidFirstLastClippingEnabled = true

        lineChartView.rightAxis.drawAxisLineEnabled = false
        lineChartView.rightAxis.drawLabelsEnabled = false

        lineChartView.leftAxis.drawAxisLineEnabled = false
        lineChartView.pinchZoomEnabled = false
        lineChartView.doubleTapToZoomEnabled = false
        lineChartView.legend.enabled = false
    }
}

extension VisitTrendVC: ChartViewDelegate {
    func chartValueSelected(_ chartView: ChartViewBase, entry: ChartDataEntry, highlight: Highlight) {
        print("Selected")
    }
}

// MARK: - API Service Call

extension VisitTrendVC {
    func getVisitTrendServiceCall() {
        Utils.showHUD(view: view)
        DataManager.sharedInstance().visitTrendService { error, response in
            DispatchQueue.main.async { [self] in
                Utils.hideHUD(view: self.view)
                if let error = error {
                    Utils.showAlert(message: error.localizedDescription, viewController: self)
                } else {
                    if let visitTrendDetail = response?.data {
                        let dictSortByValue = visitTrendDetail.sorted(by: { $0.value < $1.value })
                        for item in dictSortByValue {
                            months.append(item.key)
                            unitsSold.append(item.value)
                            dataSet(dataPoints: months, values: unitsSold)
                        }
                    }
                }
            }
        }
    }
}
