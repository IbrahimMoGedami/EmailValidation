//
//  Validator.swift
//  EmailVallidator
//
//  Created by Ibrahim Mo Gedami on 5/10/23.
//

import Foundation

public class Validator{
    
    public static func validateEmail(with email: String) -> Bool? {
        let emailRegx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegx)
            return emailPred.evaluate(with: email)
    }
}
 
