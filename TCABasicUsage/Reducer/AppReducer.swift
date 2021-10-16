//
//  AppReducer.swift
//  TCABasicUsage
//
//  Created by haigo koji on 2021/10/16.
//

import Foundation
import ComposableArchitecture

let appReducer = Reducer<AppState, AppAction, AppEnvironment> { state, action, environment in
    switch action {
    case .factAlertDismissed:
        state.numberFactAlert = nil
        return .none

    case .decrementButtonTapped:
        state.count -= 1
        return .none
        
    case .incrementButtonTapped:
        state.count += 1
        return .none
        
    case .numberFactButtonTapped:
        return environment.numberFact(state.count)
            .receive(on: environment.mainQueue)
            .catchToEffect()
            .map(AppAction.numberFactResponse)
        
    case let .numberFactResponse(.success(fact)):
        state.numberFactAlert = fact
        return .none
        
    case .numberFactResponse(.failure):
        state.numberFactAlert = "Could not load a number fact :)"
        return .none
    }
}
