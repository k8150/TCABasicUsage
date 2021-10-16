//
//  AppEnvironment.swift
//  TCABasicUsage
//
//  Created by haigo koji on 2021/10/16.
//

import Foundation
import CombineSchedulers
import ComposableArchitecture

struct AppEnvironment {
    var mainQueue: AnySchedulerOf<DispatchQueue>
    var numberFact: (Int) -> Effect<String, ApiError>
}
