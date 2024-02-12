//
//  PillInputView.swift
//  Project Health Check
//
//  Created by Darius Couti on 12.02.2024.
//

import SwiftUI

struct PillInputView: View {
    
    @State private var pillName: String = "" // we want this to don.t be initialized as an empty string for the edit pill case, it will get the current pill name
    @State private var selectedItem: Int = 0 // same reason here
    @State private var pillsInStock: String = "" // same reason here
    @State private var startDate = Date.now // same here
    @State private var endDate = Date.now // same here
    @State private var needPrescription = false // same here
    @State private var useDaily = true // we need to think how we handle the cases where the pill is not used daily
    @State private var howManyTimes = 0 // same here
    @State private var pillsPerDose: String = "" // same here
    @State private var giveNotifications = false // same here
    
    var body: some View {
        ScrollView {
            VStack(spacing: 40) {
                VStack(alignment: .leading) {
                    Text("Name")
                    TextField("Enter name", text: $pillName)
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                        .frame(height: 50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                }
                HStack {
                    VStack(alignment: .leading) {
                        Text("Type")
                        Picker("Pill Type", selection: $selectedItem) {
                            Text("Vitamins").tag(0)
                            Text("Medicine").tag(1)
                            Text("Steroids").tag(2)
                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.indigo.opacity(0.35)))
                        .foregroundColor(Color.indigo)
                    }
                    VStack(alignment: .leading) {
                        Text("Pills in stock")
                        TextField("Pills in stock", text: $pillsInStock)
                            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                            .frame(height: 50)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                    }
                    .frame(maxWidth: .infinity)
                }
                DatePicker(selection: $startDate, in: ...Date.now, displayedComponents: [.date, .hourAndMinute]) {
                    Text("Start date")
                }
                DatePicker(selection: $endDate, in: ...Date.now, displayedComponents: [.date, .hourAndMinute]) {
                    Text("End date")
                }
                Toggle("Need prescription?", isOn: $needPrescription)
                    .toggleStyle(SwitchToggleStyle(tint: .indigo))
                Toggle("Use daily?", isOn: $useDaily)
                    .toggleStyle(SwitchToggleStyle(tint: .indigo))
                VStack(alignment: .leading) {
                    Text("How many times a day?")
                    Picker("What is your favorite color?", selection: $howManyTimes) {
                        Text("1").tag(0)
                        Text("2").tag(1)
                        Text("3").tag(2)
                    }
                    .pickerStyle(.segmented)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.indigo.opacity(0.35)))
                    VStack(alignment: .leading, spacing: -15) { // i dont know if its ok to give <0 values
                        ForEach(0..<howManyTimes+1, id: \.self) { index in
                            DatePicker("Start date \(index + 1)", selection: $startDate, in: ...Date.now, displayedComponents: [.date, .hourAndMinute])
                                .padding()
                            
                        }
                    }
                }
                HStack {
                    Text("How many pills per use?")
                    Spacer()
                    TextField("", text: $pillsPerDose)
                        .frame(height: 40)
                        .frame(maxWidth: 50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                }
                Toggle("Want alarm for this pill?", isOn: $giveNotifications)
                    .toggleStyle(SwitchToggleStyle(tint: .indigo))
                Button(action: {
                           print("save/edit pill")
                       }) {
                               Text("Save")
                                   .foregroundColor(.white)
                                    // needs frame .infinity to make id wider
                                   .frame(maxWidth: .infinity)
                                   .frame(height: 30)
                                   .padding([.top, .bottom], 8)
                       }
                       .background(Color.indigo)
                       .cornerRadius(16)
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.bottom, 40)
        }
    }
}

#Preview {
    PillInputView()
}

