//
//  TCABasicUsageApp.swift
//  TCABasicUsage
//
//  Created by haigo koji on 2021/10/15.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCABasicUsageApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(
                store: Store(
                    initialState: AppState(),
                    reducer: appReducer,
                    environment: AppEnvironment(
                        mainQueue: DispatchQueue.main.eraseToAnyScheduler(),
                        numberFact: { number in
                            Effect(value: "\(number) is a good number Brent")
                        }
                    )
                )
            )
        }
    }
}
