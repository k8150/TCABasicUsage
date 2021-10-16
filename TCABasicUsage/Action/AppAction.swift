//
//  AppAction.swift
//  TCABasicUsage
//
//  Created by haigo koji on 2021/10/16.
//

import Foundation

enum AppAction: Equatable {
    case factAlertDismissed
    case decrementButtonTapped
    case incrementButtonTapped
    case numberFactButtonTapped
    case numberFactResponse(Result<String, ApiError>)
}

struct ApiError: Error, Equatable {}
