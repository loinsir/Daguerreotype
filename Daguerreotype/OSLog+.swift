//
//  OSLog+.swift
//  Daguerreotype
//
//  Created by 김인환 on 2023/06/20.
//

import OSLog

extension OSLog {
    private static var subsystem = Bundle.main.bundleIdentifier!
    static let ui = OSLog(subsystem: subsystem, category: "UI")
    static let data = OSLog(subsystem: subsystem, category: "Data")
}
