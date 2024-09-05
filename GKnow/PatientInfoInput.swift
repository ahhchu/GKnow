//
//  PatientInfoInput.swift
//  GKnow
//
//  Created by Catherine Chu on 8/29/24.
//

import SwiftUI

struct PatientInfoInput: View {
    @State private var firstName: String = ""
    @State private var middleName: String = ""
    @State private var lastName: String = ""
    @State private var age: String = ""
    
    @State private var showPatientCard: Bool = false
    @State private var isEditing: Bool = false // To track edit mode

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Patient Information")
                .font(.headline)
            
            Group {
                HStack {
                    Text("First Name:")
                    TextField("Enter first name", text: $firstName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                // comment
                HStack {
                    Text("Middle Name:")
                    TextField("Enter middle name", text: $middleName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                HStack {
                    Text("Last Name:")
                    TextField("Enter last name", text: $lastName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                HStack {
                    Text("Age:")
                    TextField("Enter age", text: $age)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.numberPad)
                }
            }
            .padding(.horizontal)
            
            Button(action: {
                isEditing = false
                showPatientCard = true
            }) {
                Text("Create Patient Card")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.top)
            
            if showPatientCard {
                PatientCardView(firstName: $firstName, middleName: $middleName, lastName: $lastName, age: $age, isEditing: $isEditing, showPatientCard: $showPatientCard)
                    .padding(.top)
            }
            
            Spacer()
        }
        .padding()
    }
}

struct PatientInfoInput_Previews: PreviewProvider {
    static var previews: some View {
        PatientInfoInput()
    }
}

struct PatientCardView: View {
    @Binding var firstName: String
    @Binding var middleName: String
    @Binding var lastName: String
    @Binding var age: String
    @Binding var isEditing: Bool
    @Binding var showPatientCard: Bool

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Patient Card")
                .font(.headline)
            Text("First: \(firstName)")
            Text("Middle:\(middleName)")
            Text("Last:  \(lastName)")
            Text("Age: \(age)")
            
            HStack {
                Button(action: {
                    isEditing = true // Set to editing mode
                }) {
                    Text("Edit")
                        .padding(10)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
                Button(action: {
                    // Clear the card
                    firstName = ""
                    middleName = ""
                    lastName = ""
                    age = ""
                    showPatientCard = false
                }) {
                    Text("Delete")
                        .padding(10)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding(.top, 10)
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
    }
}
