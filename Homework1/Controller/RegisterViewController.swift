//
//  RegisterViewController.swift
//  Homework1
//
//  Created by Drivosity Tetovo on 21.9.22.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.attributedPlaceholder = NSAttributedString(
            string: "Member ID",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        // password.textAlignment = .center
        passwordTextField.attributedPlaceholder = NSAttributedString(
            string: "Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        
    }
    
    
    @IBAction func registerBttn(_ sender: UIButton) {
        
        if let email = emailTextField.text,
           let password = passwordTextField.text{
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                
                if let e = error  {
                    print(e)
                    let alert = UIAlertController(title: "Alert", message: "Your email address should be yourname@example.com, and your Password must contain Six charachters!", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    self.present(alert, animated: true, completion: {  //complition it means when user taps ok and we co back in if condition
                        return
                    })
                }
                else{
                    
                    //self.performSegue(withIdentifier: "RegisterToHome", sender: s          elf)
                    
                }
                //  if !email.isValidEmailAddr(email: email) {
                
                //    let alert = UIAlertController(title: "Alert", message: "Your email address should be yourname@example.com", preferredStyle: .alert)
                //  alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                // self.present(alert, animated: true, completion: {  //complition it means when user taps ok and we co back in if condition
                //   return
                //})
                
                //}else if !password.isValidPassword(pwd: password) {
                
                //  let alert = UIAlertController(title: "Alert", message: "Your password must contain at least one uppercase letter and numbers", preferredStyle: .alert)
                //alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                //self.present(alert, animated: true, completion: {  //complition it means when user taps ok and we co back in if condition
                //  return
                // })
                //}
                
            }
        }
    }
    
}

/*extension String {
 func isValidEmailAddr(email: String) -> Bool {
 let emailValidationRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
 
 let emailValidationPredicate = NSPredicate(format: "SELF MATCHES %@", emailValidationRegex)
 
 return emailValidationPredicate.evaluate(with: email)
 }
 func isValidPassword(pwd: String) -> Bool {
 let passwordRegEx = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$"
 let passwordTest = NSPredicate(format: "SELF MATCHES %@", passwordRegEx)
 return passwordTest.evaluate(with: pwd)
 }
 }*/
