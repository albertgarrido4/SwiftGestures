//
//  GesturesApp.swift
//  Gestures
//
//  Created by alumne on 12/02/2025.
//

import SwiftUI

@main
struct GesturesApp: App {
    @StateObject private var viewModel = SymbolViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(viewModel)
        }
    }
}
