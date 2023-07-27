//
//  Model.swift
//  Task 4 - RealmSwift
//
//  Created by Jayaprakash on 25/07/23.
//

import Foundation
import RealmSwift

struct DataRecord {
    var metricValue: Int
    var timeInterval: TimeInterval
}

struct HeartRateModel {
    var date: Date
    var dataRecords: [DataRecord]
}

struct StepsModel {
    var date: Date
    var dataRecords: [DataRecord]
}

struct Spo2Model {
    var date: Date
    var dataRecords: [DataRecord]
}

struct BPModel {
    var date: Date
    var dataRecords: [DataRecord]
}

struct StressModel {
    var date: Date
    var dataRecords: [DataRecord]
}






class DataRecord2: Object {
    @objc dynamic var metricValue: Int = 0
    @objc dynamic var timeInterval: TimeInterval = 0

    convenience init(metricValue: Int, timeInterval: TimeInterval) {
        self.init()
        self.metricValue = metricValue
        self.timeInterval = timeInterval
    }
    
}

class HeartRateModel2: Object {

    @objc dynamic var date: Date = Date()
    dynamic var dataRecords = List<DataRecord2>()
    @objc dynamic var id: String = Date().formatted(date: .numeric, time: .omitted)

    convenience init(date: Date, dataRecords: List<DataRecord2>) {
        self.init()
        self.date = date
        self.dataRecords = dataRecords
    }

    override static func primaryKey() -> String {
        return "id"
    }
}

class StepsModel2: Object {

    @objc dynamic var date: Date = Date()
    dynamic var dataRecords = List<DataRecord2>()
    @objc dynamic var id: String = Date().formatted(date: .numeric, time: .omitted)

    convenience init(date: Date, dataRecords: List<DataRecord2>) {
        self.init()
        self.date = date
        self.dataRecords = dataRecords
    }

    override static func primaryKey() -> String {
        return "id"
    }
}

class Spo2Model2: Object {

    @objc dynamic var date: Date = Date()
    dynamic var dataRecords = List<DataRecord2>()
    @objc dynamic var id: String = Date().formatted(date: .numeric, time: .omitted)

    convenience init(date: Date, dataRecords: List<DataRecord2>) {
        self.init()
        self.date = date
        self.dataRecords = dataRecords
    }

    override static func primaryKey() -> String {
        return "id"
    }
}

class BPModel2: Object {

    @objc dynamic var date: Date = Date()
    dynamic var dataRecords = List<DataRecord2>()
    @objc dynamic var id: String = Date().formatted(date: .numeric, time: .omitted)

    convenience init(date: Date, dataRecords: List<DataRecord2>) {
        self.init()
        self.date = date
        self.dataRecords = dataRecords
    }

    override static func primaryKey() -> String {
        return "id"
    }
}

class StressModel2: Object {

    @objc dynamic var date: Date = Date()
    dynamic var dataRecords = List<DataRecord2>()
    @objc dynamic var id: String = Date().formatted(date: .numeric, time: .omitted)

    convenience init(date: Date, dataRecords: List<DataRecord2>) {
        self.init()
        self.date = date
        self.dataRecords = dataRecords
    }

    override static func primaryKey() -> String {
        return "id"
    }
}



