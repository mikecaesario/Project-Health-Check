//  
//  PillTrackerView.swift
//  Project Health Check
//
//  Created with ❤️‍🔥 by Michael Caesario on 03/01/24.
//  Copyright © 2024 Michael Caesario. All rights reserved.
// 
//  Website: https://mikecaesario.app
//  GitHub: https://github.com/mikecaesario
//  LinkedIn: https://www.linkedin.com/in/mikecaesario/
//

import SwiftUI

struct PillTrackerView: View {
    //example data fetch
    func fetchData(){
        print("fetching data")
    }
    //placeholder var to show if statement
    @State var exampleData = false
    
    
    var body: some View {
        // No pills available
        
        if !exampleData {
            VStack{
                VStack(spacing: 16){
                    Image(systemName: "pills")
                        .resizable()
                        .foregroundColor(.indigo) //<< replace with new color later
                        .frame(width: 250, height: 250)
                           .clipped()
                    Text("You have not added any pills")
                        .font(.system(size: 20, weight: .bold))
                    Text("Please add pills to begin tracking and monitoring your daily dosage")
                        .multilineTextAlignment(.center)
                    TrackerButton(action: fetchData, title: "Add Pills" )
                        .padding(.top, 15)
                }
            }
            Spacer()
        }
        else{
            //Pills available view
        }
    }
}

#Preview {
    PillTrackerView()
}
