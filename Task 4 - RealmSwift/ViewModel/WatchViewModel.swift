//
//  ViewModel.swift
//  Task 4 - RealmSwift
//
//  Created by Jayaprakash on 26/07/23.
//

import Foundation
import RealmSwift

class WatchViewModel {
    
    func generateMetricData(startTime: TimeInterval, endTime: TimeInterval, timeIntervalInMinutes: Int, minimumMetricValue: Int, maximumMetricValue: Int) -> List<DataRecord>{
        
        var dataRecords = RealmSwift.List<DataRecord>()
        
        for i in stride(from: startTime, through: endTime, by: Double.Stride(timeIntervalInMinutes*60)) {
            dataRecords.append(DataRecord(metricValue: Int.random(in: minimumMetricValue...maximumMetricValue), timeInterval: i))
        }
        return dataRecords
        
    }
}

extension Date {
    
    var midnight: Date {
        return Calendar.current.startOfDay(for: self)
    }
}
