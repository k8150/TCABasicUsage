//
//  AppState.swift
//  TCABasicUsage
//
//  Created by haigo koji on 2021/10/16.
//

import Foundation

import ComposableArchitecture

struct AppState: Equatable {
    var count = 0
    var numberFactAlert: String?
}
