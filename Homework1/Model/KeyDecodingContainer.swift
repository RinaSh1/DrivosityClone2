//
//  KeyDecodingContainer.swift
//  Homework1
//
//  Created by Drivosity Tetovo on 12.10.22.
//

import Foundation
extension KeyedDecodingContainer {
    func decodeWrapper<T>(key: K, defaultValue: T) throws -> T
    where T : Decodable {
        return try decodeIfPresent(T.self, forKey: key) ?? defaultValue
    }
}
extension String {
    var trimmed: String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    func hasValue() -> Bool {
        return !self.isEmpty
    }
}
extension Double {
    func stringValue(decimals: Int) -> String {
        let format = "%.\(decimals)f"
        return String(format: format, self)
    }
    
    
}
