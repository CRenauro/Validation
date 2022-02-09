//
//  Extension.swift
//  Validation
//
//  Created by Clara Renauro on 2/9/22.
//

import Foundation

func showAlert(title: String, message: String, okButton: String = "OK"){
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    
    let actionDone = UIAlertAction(title: okButton, style: .default, handler: nil)
    
    alert.addAction(actionDone)
    
    self.present(alert, animated: true, completion: nil)
}
