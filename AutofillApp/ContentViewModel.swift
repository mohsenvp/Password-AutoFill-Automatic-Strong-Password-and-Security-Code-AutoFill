//
//  ContentViewModel.swift
//  AutofillApp
//
//  Created by Mohsen on 22/04/2024.
//

import Foundation

class ContentViewModel: ObservableObject{
    
    @Published var email : String = ""
    @Published var password : String = ""
    @Published var newPassword : String = ""
    @Published var confirmNewPassword : String = ""
    @Published var oneTimeCode : String = ""
    
}
