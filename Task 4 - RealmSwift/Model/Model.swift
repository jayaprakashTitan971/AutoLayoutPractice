//
//  Model.swift
//  Task 4 - RealmSwift
//
//  Created by Jayaprakash on 25/07/23.
//

import Foundation
import RealmSwift

public struct HeartRateModel {
    public var date: Date!
    public var dataRecords = [HeartRateDataRecord]()
    public init() { }
}

public struct StepsModel {
    public var date: Date!
    public var dataRecords = [StepsDataRecord]()
}

public struct Spo2Model {
    public var date: Date!
    public var dataRecords = [Spo2DataRecord]()
}

public struct BloodPressureModel {
    var date: Date!
    var dataRecords = [BloodPressureDataRecord]()
}

public struct StressModel {
    var date: Date!
    var dataRecords = [StressDataRecord]()
}


public struct HeartRateDataRecord {
    public var heartRate: Int = 0
    public var timeInterval: TimeInterval = 0
    public init() { }
}

public struct StepsDataRecord {
    public var steps: Int = 0
    public var timeInterval: TimeInterval = 0
}

public struct Spo2DataRecord {
    public var spo2: Int = 0
    public var timeInterval: TimeInterval = 0
}

public struct BloodPressureDataRecord {
    public var systolic: Int = 0
    public var diastolic: Int = 0
    public var timeInterval: TimeInterval = 0
}

public struct StressDataRecord {
    public var stress: Int = 0
    public var timeInterval: TimeInterval = 0
}








class HeartRateEntity: Object {

    @objc dynamic var id: String = Date().formatted(date: .numeric, time: .omitted)
    @objc dynamic var date: Date = Date()
    dynamic var dataRecords = List<HeartRateDataRecordForDB>()
    

//    convenience init(date: Date, dataRecords: List<HeartRateDataRecordForDB>) {
//        self.init()
//        self.date = date
//        self.dataRecords = dataRecords
//    }

    override static func primaryKey() -> String {
        return "id"
    }
}

class StepsEntity: Object {
    
    @objc dynamic var id: String = Date().formatted(date: .numeric, time: .omitted)
    @objc dynamic var date: Date = Date()
    dynamic var dataRecords = List<StepsDataRecordForDB>()

//    convenience init(date: Date, dataRecords: List<StepsDataRecordForDB>) {
//        self.init()
//        self.date = date
//        self.dataRecords = dataRecords
//    }

    override static func primaryKey() -> String {
        return "id"
    }
}

class Spo2Entity: Object {
    
    @objc dynamic var id: String = Date().formatted(date: .numeric, time: .omitted)
    @objc dynamic var date: Date = Date()
    dynamic var dataRecords = List<Spo2DataRecordForDB>()

//    convenience init(date: Date, dataRecords: List<Spo2DataRecordForDB>) {
//        self.init()
//        self.date = date
//        self.dataRecords = dataRecords
//    }

    override static func primaryKey() -> String {
        return "id"
    }
}

class BloodPressureEntity: Object {

    @objc dynamic var id: String = Date().formatted(date: .numeric, time: .omitted)
    @objc dynamic var date: Date = Date()
    dynamic var dataRecords = List<BloodPressureDataRecordForDB>()

//    convenience init(date: Date, dataRecords: List<BloodPressureDataRecordForDB>) {
//        self.init()
//        self.date = date
//        self.dataRecords = dataRecords
//    }

    override static func primaryKey() -> String {
        return "id"
    }
}

class StressEntity: Object {

    @objc dynamic var id: String = Date().formatted(date: .numeric, time: .omitted)
    @objc dynamic var date: Date = Date()
    dynamic var dataRecords = List<StressDataRecordForDB>()
    

//    convenience init(date: Date, dataRecords: List<StressDataRecordForDB>) {
//        self.init()
//        self.date = date
//        self.dataRecords = dataRecords
//    }

    override static func primaryKey() -> String {
        return "id"
    }
}

class HeartRateDataRecordForDB: Object {
    @objc dynamic var heartRate: Int = 0
    @objc dynamic var timeInterval: TimeInterval = 0

//    convenience init(heartRate: Int, timeInterval: TimeInterval) {
//        self.init()
//        self.heartRate = heartRate
//        self.timeInterval = timeInterval
//    }
    
}

class StepsDataRecordForDB: Object {
    @objc dynamic var steps: Int = 0
    @objc dynamic var timeInterval: TimeInterval = 0

//    convenience init(steps: Int, timeInterval: TimeInterval) {
//        self.init()
//        self.steps = steps
//        self.timeInterval = timeInterval
//    }
    
}

class Spo2DataRecordForDB: Object {
    @objc dynamic var spo2: Int = 0
    @objc dynamic var timeInterval: TimeInterval = 0

//    convenience init(spo2: Int, timeInterval: TimeInterval) {
//        self.init()
//        self.spo2 = spo2
//        self.timeInterval = timeInterval
//    }
    
}

class BloodPressureDataRecordForDB: Object {
    @objc dynamic var systolic: Int = 0
    @objc dynamic var diastolic: Int = 0
    @objc dynamic var timeInterval: TimeInterval = 0

//    convenience init(systolic: Int, diastolic: Int, timeInterval: TimeInterval) {
//        self.init()
//        self.systolic = systolic
//        self.diastolic = diastolic
//        self.timeInterval = timeInterval
//    }
    
}

class StressDataRecordForDB: Object {
    @objc dynamic var stress: Int = 0
    @objc dynamic var timeInterval: TimeInterval = 0

//    convenience init(stress: Int, timeInterval: TimeInterval) {
//        self.init()
//        self.stress = stress
//        self.timeInterval = timeInterval
//    }
    
}


