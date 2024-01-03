//  
//  ContentView.swift
//  Project Health Check
//
//  Created with ❤️‍🔥 by Michael Caesario on 15/12/23.
//  Copyright © 2023 Michael Caesario. All rights reserved.
// 
//  Website: https://mikecaesario.app
//  GitHub: https://github.com/mikecaesario
//  LinkedIn: https://www.linkedin.com/in/mikecaesario/
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            
            DashboardView()
                .tabItem { Label("Dashboard", systemImage: "heart") }
            
            PillTrackerView()
                .tabItem { 
                    Label("Pill", systemImage: "pill")
                }
            
            MoodTrackerView()
                .tabItem { Label("Mood", systemImage: "face.smiling") }
        }
    }
}

#Preview {
    ContentView()
}
