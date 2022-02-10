//
//  ViewController.swift
//  Validation
//
//  Created by Clara Renauro on 2/9/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var emailAddressField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }


    @IBAction func signupButton(_ sender: Any) {
        
        let providedEmailAddress = emailAddressField.text
        
        let isEmailAddressValid = isValidEmailAddress(emailAddressString: providedEmailAddress!)
        
        if isEmailAddressValid
        {
            print("valid")
        } else {
            print("not valid")
            
        }
        
        let alertController = UIAlertController(title: "Alert", message: "This is a valid email address", preferredStyle: .alert)

                let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in

                    // Code in this block will trigger when OK button tapped.
                    print("Ok button tapped");

                }

                alertController.addAction(OKAction)

                self.present(alertController, animated: true, completion:nil)
    }
    
}

func isValidEmailAddress(emailAddressString: String) -> Bool {
  
  var returnValue = true
  let emailRegEx = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
  
  do {
      let regex = try NSRegularExpression(pattern: emailRegEx)
      let nsString = emailAddressString as NSString
      let results = regex.matches(in: emailAddressString, range: NSRange(location: 0, length: nsString.length))
      
      if results.count == 0
      {
          returnValue = false
      }
      
  } catch let error as NSError {
      print("invalid regex: \(error.localizedDescription)")
      returnValue = false
  }
  
  return  returnValue
}



