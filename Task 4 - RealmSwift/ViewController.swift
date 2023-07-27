//
//  ViewController.swift
//  Task 4 - RealmSwift
//
//  Created by Jayaprakash on 20/07/23.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    var heartRateData = [HeartRateModel]()
    var stepsData = [StepsModel]()
    var spo2Data = [Spo2Model]()
    var bpData = [BPModel]()
    var stressData = [StressModel]()

    var heartRateDataFromDB: Results<HeartRateModel2>!
    var stepsDataFromDB: Results<StepsModel2>!
    var spo2DataFromDB: Results<Spo2Model2>!
    var bpDataFromDB: Results<BPModel2>!
    var stressDataFromDB: Results<StressModel2>!
    
    let watchViewModel = WatchViewModel()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let config = Realm.Configuration(
            schemaVersion: 2)
        // Use this configuration when opening realms
        Realm.Configuration.defaultConfiguration = config
    }

    @IBAction func generateButton(_ sender: Any) {

        let midnightTime = Date().midnight.timeIntervalSince1970
        let currentTime = Date().timeIntervalSince1970

        heartRateData.append(HeartRateModel(date: Date(), dataRecords: watchViewModel.generateMetricData(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 5, minimumMetricValue: 50, maximumMetricValue: 150)))


        stepsData.append(StepsModel(date: Date(), dataRecords: watchViewModel.generateMetricData(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 30, minimumMetricValue: 100, maximumMetricValue: 1000)))

        spo2Data.append(Spo2Model(date: Date(), dataRecords: watchViewModel.generateMetricData(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 60, minimumMetricValue: 80, maximumMetricValue: 100)))

        bpData.append(BPModel(date: Date(), dataRecords: watchViewModel.generateMetricData(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 60, minimumMetricValue: 80, maximumMetricValue: 120)))

        stressData.append(StressModel(date: Date(), dataRecords: watchViewModel.generateMetricData(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 10, minimumMetricValue: 40, maximumMetricValue: 100)))

        for data in stepsData {
            print(data.date.formatted(date: .numeric, time: .omitted))
            for record in data.dataRecords {
                print(record)
            }
        }
    }
    
    
    @IBAction func storeButton(_ sender: Any) {
        
        let midnightTime = Date().midnight.timeIntervalSince1970
        let currentTime = Date().timeIntervalSince1970

        var heartRateData = HeartRateModel2(date: Date(), dataRecords: watchViewModel.generateMetricDataForDB(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 5, minimumMetricValue: 50, maximumMetricValue: 150))
        
        var stepsData = StepsModel2(date: Date(), dataRecords: watchViewModel.generateMetricDataForDB(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 30, minimumMetricValue: 100, maximumMetricValue: 1000))

        var spo2Data = Spo2Model2(date: Date(), dataRecords: watchViewModel.generateMetricDataForDB(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 60, minimumMetricValue: 80, maximumMetricValue: 100))

        var bpData = BPModel2(date: Date(), dataRecords: watchViewModel.generateMetricDataForDB(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 60, minimumMetricValue: 80, maximumMetricValue: 120))

        var stressData = StressModel2(date: Date(), dataRecords: watchViewModel.generateMetricDataForDB(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 10, minimumMetricValue: 40, maximumMetricValue: 100))

        
        let realm = try! Realm()
        try! realm.write {
            realm.add(heartRateData, update: .all)
            realm.add(stepsData, update: .all)
            realm.add(spo2Data, update: .all)
            realm.add(bpData, update: .all)
            realm.add(stressData, update: .all)
        }
        
    }
    
    
    
    @IBAction func fetchButton(_ sender: Any) {
        
        let realm = try! Realm()

        heartRateDataFromDB = realm.objects(HeartRateModel2.self)
        stepsDataFromDB = realm.objects(StepsModel2.self)
        spo2DataFromDB = realm.objects(Spo2Model2.self)
        bpDataFromDB = realm.objects(BPModel2.self)
        stressDataFromDB = realm.objects(StressModel2.self)
        
        print(stressDataFromDB!)
        
    }
    
}

