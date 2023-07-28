//
//  ViewModel.swift
//  Task 4 - RealmSwift
//
//  Created by Jayaprakash on 26/07/23.
//

import Foundation
import RealmSwift

class WatchViewModel {
    
    func generateHeartRateDataRecords(startTime: TimeInterval, endTime: TimeInterval, timeIntervalInMinutes: Int) -> [HeartRateDataRecord]{
        
        var dataRecords = [HeartRateDataRecord]()
        
        for i in stride(from: startTime, through: endTime, by: Double.Stride(timeIntervalInMinutes*60)) {
            var model = HeartRateDataRecord()
            model.heartRate = Int.random(in: 60...150)
            model.timeInterval = i
            dataRecords.append(model)
        }
        return dataRecords
    }
    
    func generateStepsDataRecords(startTime: TimeInterval, endTime: TimeInterval, timeIntervalInMinutes: Int) -> [StepsDataRecord]{
        
        var dataRecords = [StepsDataRecord]()
        
        for i in stride(from: startTime, through: endTime, by: Double.Stride(timeIntervalInMinutes*60)) {
            var model = StepsDataRecord()
            model.steps = Int.random(in: 100...1000)
            model.timeInterval = i
            dataRecords.append(model)
        }
        return dataRecords
    }
    
    func generateSpo2DataRecords(startTime: TimeInterval, endTime: TimeInterval, timeIntervalInMinutes: Int) -> [Spo2DataRecord]{
        
        var dataRecords = [Spo2DataRecord]()
        
        for i in stride(from: startTime, through: endTime, by: Double.Stride(timeIntervalInMinutes*60)) {
            var model = Spo2DataRecord()
            model.spo2 = Int.random(in: 80...100)
            model.timeInterval = i
            dataRecords.append(model)
        }
        return dataRecords
    }
    
    func generateBloodPressureDataRecords(startTime: TimeInterval, endTime: TimeInterval, timeIntervalInMinutes: Int) -> [BloodPressureDataRecord]{
        
        var dataRecords = [BloodPressureDataRecord]()
        
        for i in stride(from: startTime, through: endTime, by: Double.Stride(timeIntervalInMinutes*60)) {
            var model = BloodPressureDataRecord()
            model.diastolic = Int.random(in: 60..<80)
            model.systolic = Int.random(in: 80...120)
            model.timeInterval = i
            dataRecords.append(model)
        }
        return dataRecords
    }
    
    func generateStressDataRecords(startTime: TimeInterval, endTime: TimeInterval, timeIntervalInMinutes: Int) -> [StressDataRecord]{
        
        var dataRecords = [StressDataRecord]()
        
        for i in stride(from: startTime, through: endTime, by: Double.Stride(timeIntervalInMinutes*60)) {
            var model = StressDataRecord()
            model.stress = Int.random(in: 40...100)
            model.timeInterval = i
            dataRecords.append(model)
        }
        return dataRecords
    }
    
    
    
    
    func generateHeartRateDataRecordsForDB(startTime: TimeInterval, endTime: TimeInterval, timeIntervalInMinutes: Int) -> List<HeartRateDataRecordForDB>{
        
        var dataRecords = List<HeartRateDataRecordForDB>()
        
        for i in stride(from: startTime, through: endTime, by: Double.Stride(timeIntervalInMinutes*60)) {
            var model = HeartRateDataRecordForDB()
            model.heartRate = Int.random(in: 50...150)
            model.timeInterval = i
            dataRecords.append(model)
        }
        return dataRecords
    }
    
    func generateStepsDataRecordsForDB(startTime: TimeInterval, endTime: TimeInterval, timeIntervalInMinutes: Int) -> List<StepsDataRecordForDB>{
        
        var dataRecords = List<StepsDataRecordForDB>()
        
        for i in stride(from: startTime, through: endTime, by: Double.Stride(timeIntervalInMinutes*60)) {
            var model = StepsDataRecordForDB()
            model.steps = Int.random(in: 100...1000)
            model.timeInterval = i
            dataRecords.append(model)
        }
        return dataRecords
    }
    
    func generateSpo2DataRecordsForDB(startTime: TimeInterval, endTime: TimeInterval, timeIntervalInMinutes: Int) -> List<Spo2DataRecordForDB>{
        
        var dataRecords = List<Spo2DataRecordForDB>()
        
        for i in stride(from: startTime, through: endTime, by: Double.Stride(timeIntervalInMinutes*60)) {
            var model = Spo2DataRecordForDB()
            model.spo2 = Int.random(in: 80...100)
            model.timeInterval = i
            dataRecords.append(model)
        }
        return dataRecords
    }
    
    func generateBloodPressureDataRecordsForDB(startTime: TimeInterval, endTime: TimeInterval, timeIntervalInMinutes: Int) -> List<BloodPressureDataRecordForDB>{
        
        var dataRecords = List<BloodPressureDataRecordForDB>()
        
        for i in stride(from: startTime, through: endTime, by: Double.Stride(timeIntervalInMinutes*60)) {
            var model = BloodPressureDataRecordForDB()
            model.diastolic = Int.random(in: 60..<80)
            model.systolic = Int.random(in: 80...120)
            model.timeInterval = i
            dataRecords.append(model)
        }
        return dataRecords
    }
    
    func generateStressDataRecordsForDB(startTime: TimeInterval, endTime: TimeInterval, timeIntervalInMinutes: Int) -> List<StressDataRecordForDB>{
        
        var dataRecords = List<StressDataRecordForDB>()
        
        for i in stride(from: startTime, through: endTime, by: Double.Stride(timeIntervalInMinutes*60)) {
            var model = StressDataRecordForDB()
            model.stress = Int.random(in: 40...100)
            model.timeInterval = i
            dataRecords.append(model)
        }
        return dataRecords
    }
    
    
}

extension Date {
    
    var midnight: Date {
        return Calendar.current.startOfDay(for: self)
    }
}
