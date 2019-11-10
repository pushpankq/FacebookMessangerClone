import Foundation

public extension DateFormatter {
    
    class func getDateFormat(_ date: Date, _ format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        
        return  formatter.string(from: date)
    }
}

extension String {
    
//    func fromUTCToLocalDateTime(format: String = CommunityX.DateFormatterConstants.kyyyyMMddHHmmss, outputFormat: String = "yyyy-MM-dd HH:mm:ss") -> String {
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = format
//        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
//        var formattedString = self.replacingOccurrences(of: "Z", with: "")
//        if let lowerBound = formattedString.range(of: ".")?.lowerBound {
//            formattedString = "\(formattedString[..<lowerBound])"
//        }
//
//        guard let date = dateFormatter.date(from: formattedString) else {
//            return self
//        }
//
//        dateFormatter.dateFormat = outputFormat
//        dateFormatter.timeZone = TimeZone.current
//        return dateFormatter.string(from: date)
//    }
    
    func utcToLocale(currentFormat: String, requiredFormat: String) -> String {
        let formatter = DateFormatter()
        
        formatter.dateFormat = currentFormat
        formatter.locale = Locale(identifier: "UTC")
        if let date = formatter.date(from: self) {
            formatter.dateFormat = requiredFormat
            return formatter.string(from: date)
        }
        
        return self
    }
    
    func getDateFormattedString() -> String {
        return utcToLocale(currentFormat: "yyyy-MM-dd'T'HH:mm:ss.SSSZ", requiredFormat: "MM/dd/yyyy")
    }
    
    func getFormattedString() -> String {
        return utcToLocale(currentFormat: "yyyy-MM-dd", requiredFormat: "MM/dd/yyyy")
    }
    
    func geSlashDateFormattedString() -> String {
        return utcToLocale(currentFormat: "yyyy-MM-dd'T'HH:mm:ss.SSSZ", requiredFormat: "MM/dd/yyyy")
    }
    
//    func getLocalToUTC(withFormat format: String = "yyyy-MM-dd HH:mm:ss") -> String {
//
//        let formatter = DateFormatter()
//        formatter.dateFormat = format
//        formatter.timeZone = TimeZone.current
//        return formatter.string(from: self)
//    }
    
    func localToUTC(date:String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h:mm a"
        dateFormatter.calendar = NSCalendar.current
        dateFormatter.timeZone = TimeZone.current
        
        let dt = dateFormatter.date(from: date)
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        dateFormatter.dateFormat = "H:mm:ss"
        
        return dateFormatter.string(from: dt!)
    }
    
    func getDateWithTimeString() -> String {
        return utcToLocale(currentFormat: "yyyy-MM-dd'T'HH:mm:ss.SSSZ", requiredFormat: "MMM d, h:mm a")
    }
    
    func getFormattedTimeString(withFormate: String = "hh:mm a") -> String {
        return utcToLocale(currentFormat: "yyyy-MM-dd'T'HH:mm:ss.SSSZ", requiredFormat: withFormate)
    }
    
    func getDateFromString(withFormate: String = "yyyy-MM-dd'T'HH:mm:ss.SSSZ", requiredFormat: String = "yyyy-MM-dd HH:mm:ss +0000") -> Date {
        let formatter = DateFormatter()
        
        formatter.dateFormat = withFormate
        formatter.locale = Locale(identifier: "UTC")
        if let date = formatter.date(from: self) {
            formatter.dateFormat = requiredFormat
            formatter.locale = Locale(identifier: "UTC")
            
            return date
        } else {
            return Date()
        }
    }
    
    func getDateDifference(from DateToMinus: String) -> DateComponents {
        let startDate = utcToLocale(currentFormat: "yyyy-MM-dd'T'HH:mm:ss.SSSZ", requiredFormat: "MMM d, yyyy")
        let endDate = DateToMinus.utcToLocale(currentFormat: "yyyy-MM-dd'T'HH:mm:ss.SSSZ", requiredFormat: "MMM d, yyyy")
        
        return Calendar.current.dateComponents([.day], from: startDate.getDateFromString(), to: endDate.getDateFromString())
    }
    
    func getSepratedDateString(withFormat: String) -> String {
        return utcToLocale(currentFormat: "yyyy-MM-dd'T'HH:mm:ss.SSSZ", requiredFormat: withFormat)
    }
}

extension Date {
    
    func years(from date: Date) -> Int {
        return Calendar.current.dateComponents([.year], from: date, to: self).year ?? 0
    }
    /// Returns the amount of months from another date
    func months(from date: Date) -> Int {
        return Calendar.current.dateComponents([.month], from: date, to: self).month ?? 0
    }
    /// Returns the amount of days from another date
    func days(from date: Date) -> Int {
        return Calendar.current.dateComponents([.day], from: date, to: self).day ?? 0
    }
    
    func compareDays(from date: Date) -> Int {
        return Calendar.current.dateComponents([.day], from: self, to: date).day ?? 0
    }
    /// Returns the amount of hours from another date
    func hours(from date: Date) -> Int {
        return Calendar.current.dateComponents([.hour], from: date, to: self).hour ?? 0
    }
    /// Returns the amount of minutes from another date
    func minutes(from date: Date) -> Int {
        return Calendar.current.dateComponents([.minute], from: date, to: self).minute ?? 0
    }
    /// Returns the amount of seconds from another date
    func seconds(from date: Date) -> Int {
        return Calendar.current.dateComponents([.second], from: date, to: self).second ?? 0
    }
    
    /// Returns the a custom time interval description from another date
    func offset(from date: Date) -> String {
        if years(from: date)   > 0 { return "\(years(from: date))y"   }
        if months(from: date)  > 0 { return "\(months(from: date))M"  }
        if days(from: date)    > 0 { return "\(days(from: date))d"    }
        if hours(from: date)   > 0 { return "\(hours(from: date))h"   }
        if minutes(from: date) > 0 { return "\(minutes(from: date))m" }
//        if seconds(from: date) > 0 { return "\(seconds(from: date))s" }
        return ""
    }
    
    //compareDays
    func getDateString(withFormat format: String = "MMM d, yyyy") -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
    
    
    func getUTCString(withFormat format: String = "yyyy-MM-dd HH:mm:ss") -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.timeZone = TimeZone(abbreviation: "UTC")
        return formatter.string(from: self)
    }
    

    
    
    func getMonthString(withFormat format: String = "M") -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
    
    func getYearString(withFormat format: String = "yyyy") -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        
        return formatter.string(from: self)
    }
    
    func getTimeString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        
        return formatter.string(from: self)
    }
    
    func getTime() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm a"
        
        return formatter.string(from: self)
    }

}
