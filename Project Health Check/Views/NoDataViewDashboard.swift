//
//  NoDataViewDashboard.swift
//  Project Health Check
//
//  Created by Darius Couti on 10.01.2024.
//

import SwiftUI

struct NoDataViewDashboard: View {
    var body: some View {
        VStack(spacing: 16) {
            
            Image("noDataImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250, height: 250)
                .clipped()
            
            VStack(spacing: 8) {
                
                Text("No stats to shown")
                    .font(.system(size: 20, weight: .bold))
                
                Text("There are no stats to display at the moment. Please check the others tabs first")
                    .multilineTextAlignment(.center)
            }
            .padding()
            
            VStack(spacing: 8) {
                
                Button(action: {
                    // the action could be to navigate to pill tab
                           print("navigate to pills")
                       }) {
                               Text("Add pills")
                                   .foregroundColor(.white)
                                    // needs frame .infinity to make id wider
                                   .frame(maxWidth: .infinity)
                                   .padding([.top, .bottom], 8)
                       }
                       .background(Color.indigo)
                       .cornerRadius(16)
                       .padding([.leading, .trailing], 32)
                
                Button(action: {
                    // the action could be to navigate to mood tracker tab
                           print("navigate to mood tracker")
                       }) {
                               Text("Explore mood tracker")
                                   .foregroundColor(.white)
                                    // needs frame .infinity to make id wider
                                   .frame(maxWidth: .infinity)
                                   .padding([.top, .bottom], 8)
                       }
                       .background(Color.indigo)
                       .cornerRadius(16)
                       .padding([.leading, .trailing], 32)
            }
        }
    }
}

#Preview {
    NoDataViewDashboard()
}
