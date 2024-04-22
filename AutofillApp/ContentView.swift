//
//  ContentView.swift
//  AutofillApp
//
//  Created by Mohsen on 22/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel: ContentViewModel = ContentViewModel()
    

    
    var body: some View {
        NavigationStack{
            VStack {
                ScrollView {
                    VStack(spacing: 16) {
                        Spacer()
                        TextField("Email address", text: $viewModel.email)
                            .textContentType(.emailAddress)
                            .keyboardType(.emailAddress)
                        
                        SecureField("Password", text: $viewModel.password)
                            .textContentType(.password)
                        
                        Spacer()
                        
                        Button(action: {
                            print("Loged in \(viewModel.email)")
                        }) {
                            Text("Login")
                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                        
                        NavigationLink(destination: RegisterView()) {
                            HStack{
                                Text("Create Account")
                            }
                        }
                        
    //                    SecureField("New Password", text: $viewModel.newPassword)
    //                        .textContentType(.newPassword)
                    }
                    .padding(.vertical, 32)
                    .padding(.horizontal, 16)
                    
                }
            }
            .padding()
            .navigationTitle("Wellcome")
        }
    }
}
//
//#Preview {
//    ContentView()
//}
struct RegisterView: View {
    @StateObject var viewModel: ContentViewModel = ContentViewModel()
    
    var body: some View {
        VStack{
            ScrollView{
                VStack(spacing: 16) {
                    
                    TextField("Email", text: $viewModel.email)
                        .textContentType(.emailAddress)
                        .keyboardType(.emailAddress)
                    
                    SecureField("New Password", text: $viewModel.newPassword)
                        .textContentType(.newPassword)
                        
                    SecureField("Confirm New Password", text: $viewModel.newPassword)
                        .textContentType(.newPassword)
                    
                    TextField("Verify OTP", text: $viewModel.oneTimeCode)
                        .textContentType(.oneTimeCode)
                    
                    Spacer()
                    Button(action: {
                        print("Register \(viewModel.email)")
                    }) {
                        Text("Register")
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 44)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    
                }

            }
        }.padding()
    }
}
