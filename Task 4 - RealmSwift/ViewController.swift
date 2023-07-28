//
//  ViewController.swift
//  Task 4 - RealmSwift
//
//  Created by Jayaprakash on 20/07/23.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    var stepsData = [StepsModel]()
    var spo2Data = [Spo2Model]()
    var bloodPressureData = [BloodPressureModel]()
    var stressData = [StressModel]()
    
    //    var heartRateDataFromDB: Results<HeartRateModel2>!
    //    var stepsDataFromDB: Results<StepsModel2>!
    //    var spo2DataFromDB: Results<Spo2Model2>!
    //    var bpDataFromDB: Results<BPModel2>!
    //    var stressDataFromDB: Results<StressModel2>!
    
    let watchViewModel = WatchViewModel()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let config = Realm.Configuration(
            schemaVersion: 2)
        // Use this configuration when opening realms
        Realm.Configuration.defaultConfiguration = config
    }
    
    private func generateHeartRateData() {
        let midnightTime = Date().midnight.timeIntervalSince1970
        let currentTime = Date().timeIntervalSince1970
        
        var heartRateData = HeartRateModel()
        heartRateData.date = Date()
        heartRateData.dataRecords = watchViewModel.generateHeartRateDataRecords(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 5)
        print(heartRateData)
    }
    
    private func generateStepsData() {
        let midnightTime = Date().midnight.timeIntervalSince1970
        let currentTime = Date().timeIntervalSince1970
        
        var stepsData = StepsModel()
        stepsData.date = Date()
        stepsData.dataRecords = watchViewModel.generateStepsDataRecords(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 30)
        print(stepsData)
    }
    
    private func generateSpo2Data() {
        let midnightTime = Date().midnight.timeIntervalSince1970
        let currentTime = Date().timeIntervalSince1970
        
        var spo2Data = Spo2Model()
        spo2Data.date = Date()
        spo2Data.dataRecords = watchViewModel.generateSpo2DataRecords(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 60)
        print(spo2Data)
    }
    
    private func generateBloodPressureData() {
        let midnightTime = Date().midnight.timeIntervalSince1970
        let currentTime = Date().timeIntervalSince1970
        
        var bloodPressureData = BloodPressureModel()
        bloodPressureData.date = Date()
        bloodPressureData.dataRecords = watchViewModel.generateBloodPressureDataRecords(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 60)
        print(bloodPressureData)
    }
    
    private func generateStressData() {
        let midnightTime = Date().midnight.timeIntervalSince1970
        let currentTime = Date().timeIntervalSince1970
        
        var stressData = StressModel()
        stressData.date = Date()
        stressData.dataRecords = watchViewModel.generateStressDataRecords(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 10)
        print(stressData)
    }
    
    @IBAction func generateButton(_ sender: Any) {
        generateHeartRateData()
        print(" \n ----------- \n \n")
        generateStepsData()
        print(" \n ----------- \n \n")
        generateSpo2Data()
        print(" \n ----------- \n \n")
        generateBloodPressureData()
        print(" \n ----------- \n \n")
        generateStressData()
        print(" \n ----------- \n \n")
    }
    
    
    func generateAndStoreHeartRateDataForDB() {
        let midnightTime = Date().midnight.timeIntervalSince1970
        let currentTime = Date().timeIntervalSince1970
        
        var heartRateData = HeartRateEntity()
        heartRateData.date = Date()
        
        heartRateData.dataRecords = watchViewModel.generateHeartRateDataRecordsForDB(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 5)
        
        let realm = try! Realm()
        try! realm.write {
            realm.add(heartRateData, update: .all)
        }
        
    }
    
    func generateAndStoreStepsDataForDB() {
        let midnightTime = Date().midnight.timeIntervalSince1970
        let currentTime = Date().timeIntervalSince1970
        
        var stepsData = StepsEntity()
        stepsData.date = Date()
        
        stepsData.dataRecords = watchViewModel.generateStepsDataRecordsForDB(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 30)
        
        let realm = try! Realm()
        try! realm.write {
            realm.add(stepsData, update: .all)
        }
        
    }
    
    func generateAndStoreSpo2DataForDB() {
        let midnightTime = Date().midnight.timeIntervalSince1970
        let currentTime = Date().timeIntervalSince1970
        
        var spo2Data = Spo2Entity()
        spo2Data.date = Date()
        
        spo2Data.dataRecords = watchViewModel.generateSpo2DataRecordsForDB(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 60)
        
        let realm = try! Realm()
        try! realm.write {
            realm.add(spo2Data, update: .all)
        }
        
    }
    
    func generateAndStoreBloodPressureDataForDB() {
        let midnightTime = Date().midnight.timeIntervalSince1970
        let currentTime = Date().timeIntervalSince1970
        
        var bloodPressureData = BloodPressureEntity()
        bloodPressureData.date = Date()
        
        bloodPressureData.dataRecords = watchViewModel.generateBloodPressureDataRecordsForDB(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 60)
        
        let realm = try! Realm()
        try! realm.write {
            realm.add(bloodPressureData, update: .all)
        }
        
    }
    
    func generateAndStoreStressDataForDB() {
        let midnightTime = Date().midnight.timeIntervalSince1970
        let currentTime = Date().timeIntervalSince1970
        
        var stressData = StressEntity()
        stressData.date = Date()
        
        stressData.dataRecords = watchViewModel.generateStressDataRecordsForDB(startTime: midnightTime, endTime: currentTime, timeIntervalInMinutes: 10)
        
        let realm = try! Realm()
        try! realm.write {
            realm.add(stressData, update: .all)
        }
        
    }
    
    @IBAction func storeButton(_ sender: Any) {
        
        generateAndStoreHeartRateDataForDB()
        generateAndStoreStepsDataForDB()
        generateAndStoreSpo2DataForDB()
        generateAndStoreBloodPressureDataForDB()
        generateAndStoreStressDataForDB()
    }
    
    
    
    @IBAction func fetchButton(_ sender: Any) {
        
        let realm = try! Realm()

        let heartRateDataFromDB = realm.objects(HeartRateEntity.self)
        let stepsDataFromDB = realm.objects(StepsEntity.self)
        let spo2DataFromDB = realm.objects(Spo2Entity.self)
        let bpDataFromDB = realm.objects(BloodPressureEntity.self)
        let stressDataFromDB = realm.objects(StressEntity.self)

        print(heartRateDataFromDB)
        print("\n ------------- \n\n")
        print(stepsDataFromDB)
        print("\n ------------- \n\n")
        print(spo2DataFromDB)
        print("\n ------------- \n\n")
        print(bpDataFromDB)
        print("\n ------------- \n\n")
        print(stressDataFromDB)
        print("\n ------------- \n\n")

    }
    
}

