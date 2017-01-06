//
//  Helper+NSDate.swift
//  fleet
//
//  Created by peerapat atawatana on 7/15/2559 BE.
//  Copyright © 2559 DaydreamClover. All rights reserved.
//

import Foundation

public extension Helper {
    struct Date {
        
        public static func compareDay(firstDate:Foundation.Date, secondDate:Foundation.Date) -> Bool {
            return ((Calendar.current as NSCalendar).compare(firstDate, to: secondDate,
                                                             toUnitGranularity: .day)
                == .orderedSame)
        }
        
        public static func stringFromDate(_ date:Foundation.Date, format:String) -> String {
            return stringFromDate(date, format:format, calendarIdentifier:Calendar.Identifier.gregorian)
        }
        
        public static func stringFromDate(_ date:Foundation.Date, format:String, calendarIdentifier:Calendar.Identifier) -> String {
            return stringFromDate(date, format: format, calendarIdentifier: calendarIdentifier, timeZone: TimeZone(abbreviation: "UTC")!)
        }
        
        public static func stringFromDate(_ date:Foundation.Date, format:String, calendarIdentifier:Calendar.Identifier, timeZone:TimeZone) -> String {
            let dateFormatter           = DateFormatter()
            dateFormatter.dateFormat    = format
            dateFormatter.calendar      = Calendar(identifier: calendarIdentifier)
            dateFormatter.timeZone      = timeZone
            return dateFormatter.string(from: date)
        }
        
        public static func dateFromString(_ string:String, format:String) -> Foundation.Date? {
            return dateFromString(string, format: format, calendarIdentifier: Calendar.Identifier.gregorian)
        }
        
        public static func dateFromString(_ string:String, format:String, calendarIdentifier:Calendar.Identifier) -> Foundation.Date? {
            return dateFromString(string, format: format, calendarIdentifier: calendarIdentifier, timeZone: TimeZone(abbreviation: "UTC")!)
        }
        
        public static func dateFromString(_ string:String, format:String, calendarIdentifier:Calendar.Identifier, timeZone: TimeZone) -> Foundation.Date? {
            let dateFormatter           = DateFormatter()
            dateFormatter.dateFormat    = format
            dateFormatter.calendar      = Calendar(identifier: calendarIdentifier)
            dateFormatter.timeZone      = timeZone
            return dateFormatter.date(from: string)
        }
        
        public static func datesFromStrings(_ strings:[String], format:String) -> [Foundation.Date] {
            return datesFromStrings(strings, format: format, calendarIdentifier: Calendar.Identifier.gregorian)
        }
        
        // Wrapper for NSDateFormatter dateFromString() - for array use
        public static func datesFromStrings(_ strings:[String], format:String, calendarIdentifier:Calendar.Identifier) -> [Foundation.Date] {
            var returnDates:[Foundation.Date]  = []
            let dateFormatter         = DateFormatter()
            dateFormatter.dateFormat  = format
            dateFormatter.calendar    = Calendar(identifier: calendarIdentifier)
            
            for string in strings{
                if let date = dateFormatter.date(from: string) {
                    returnDates.append(date)
                }
            }
            return returnDates
        }
    }
}
