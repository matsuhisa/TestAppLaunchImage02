//  Constants.swift
//  TestAppLaunchImage02

import Foundation

class Constants:NSObject {
    #if DEBUG
    let MESSEAGE = "こんにちは（開発中です）"
    #else
    let MESSEAGE = "こんにちは"
    #endif
}