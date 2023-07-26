//
//  ViewController.swift
//  Task 4 - RealmSwift
//
//  Created by Jayaprakash on 20/07/23.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    var heartRateData = List<HeartRateModel>()
//    var stepsData = List<StepsModel>()
//    var spo2Data = List<Spo2Model>()
//    var bpData = List<BPModel>()
//    var stressData = List<StressModel>()
    
    let watchViewModel = WatchViewModel()
    
    let realm = try! Realm()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

//    @IBAction func generateButton(_ sender: Any) {
//
//        let midnightTime = Date().midnight.timeIntervalSince1970
//        let currentTime = Date().timeIntervalSince1970
//
//        heartRateData.append(HeartRateModel(date: Date(), dataRecords: watchViewModel.generateMetricData(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 5, minimumMetricValue: 50, maximumMetricValue: 150)))
//
//
//        stepsData.append(StepsModel(date: Date(), dataRecords: watchViewModel.generateMetricData(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 30, minimumMetricValue: 100, maximumMetricValue: 1000)))
//
//        spo2Data.append(Spo2Model(date: Date(), dataRecords: watchViewModel.generateMetricData(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 60, minimumMetricValue: 80, maximumMetricValue: 100)))
//
//        bpData.append(BPModel(date: Date(), dataRecords: watchViewModel.generateMetricData(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 60, minimumMetricValue: 80, maximumMetricValue: 120)))
//
//        stressData.append(StressModel(date: Date(), dataRecords: watchViewModel.generateMetricData(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 10, minimumMetricValue: 40, maximumMetricValue: 100)))
//
//        for data in stepsData {
//            print(data.date.formatted(date: .numeric, time: .omitted))
//            for record in data.dataRecords {
//                print(record)
//            }
//        }
//    }
    
    
    @IBAction func storeButton(_ sender: Any) {
        
        let midnightTime = Date().midnight.timeIntervalSince1970
        let currentTime = Date().timeIntervalSince1970

        var heartRateData = List<HeartRateModel>()
        
        heartRateData.append(HeartRateModel(date: Date(), dataRecords: watchViewModel.generateMetricData(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 5, minimumMetricValue: 50, maximumMetricValue: 150)))


//        stepsData.append(StepsModel(date: Date(), dataRecords: watchViewModel.generateMetricData(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 30, minimumMetricValue: 100, maximumMetricValue: 1000)))
//
//        spo2Data.append(Spo2Model(date: Date(), dataRecords: watchViewModel.generateMetricData(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 60, minimumMetricValue: 80, maximumMetricValue: 100)))
//
//        bpData.append(BPModel(date: Date(), dataRecords: watchViewModel.generateMetricData(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 60, minimumMetricValue: 80, maximumMetricValue: 120)))
//
//        stressData.append(StressModel(date: Date(), dataRecords: watchViewModel.generateMetricData(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 10, minimumMetricValue: 40, maximumMetricValue: 100)))
        
        try! realm.write {
            realm.add(heartRateData)
        }
        
    }
    
    
    
    @IBAction func fetchButton(_ sender: Any) {
        let todos = realm.objects(HeartRateModel.self)
        
        print(todos)
    }
    
}

