//
//  Model.swift
//  Task 4 - RealmSwift
//
//  Created by Jayaprakash on 25/07/23.
//

import Foundation
import RealmSwift

//struct DataRecord {
//    var metricValue: Int
//    var timeInterval: TimeInterval
//}
//
//struct HeartRateModel {
//    var date: Date
//    var dataRecords: [DataRecord]
//}
//
//struct StepsModel {
//    var date: Date
//    var dataRecords: [DataRecord]
//}
//
//struct Spo2Model {
//    var date: Date
//    var dataRecords: [DataRecord]
//}
//
//struct BPModel {
//    var date: Date
//    var dataRecords: [DataRecord]
//}
//
//struct StressModel {
//    var date: Date
//    var dataRecords: [DataRecord]
//}

class DataRecord: Object {
    @objc var metricValue: Int
    @objc var timeInterval: TimeInterval
    
    init(metricValue: Int, timeInterval: TimeInterval) {
        
        self.metricValue = metricValue
        self.timeInterval = timeInterval
    }
}

class HeartRateModel: Object {
    
    @objc var date: Date
    var dataRecords = List<DataRecord>()
    @objc var id: String {
        return date.formatted(date: .numeric, time: .omitted)
    }
    
    init(date: Date, dataRecords: List<DataRecord> = List<DataRecord>()) {
        self.date = date
        self.dataRecords = dataRecords
    }
}

