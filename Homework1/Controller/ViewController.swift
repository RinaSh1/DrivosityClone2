//
//  ViewController.swift
//  Homework1
//
//  Created by Drivosity Tetovo on 31.8.22.
//

import UIKit
import Firebase

class ViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var rememberMeBtn: UIButton!
    @IBOutlet weak var signInOutlet: UIButton!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var logInOutlet: UIButton!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        userName.layer.masksToBounds = true
        userName.backgroundColor = UIColor(named: "textFieldColor")
        userName.layer.cornerRadius = 10.0
        password.layer.masksToBounds = true
        password.layer.cornerRadius = 10.0
        password.backgroundColor = UIColor(named: "textFieldColor")
        // userName.textAlignment = .center
        userName.attributedPlaceholder = NSAttributedString(
            string: "Member ID",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        // password.textAlignment = .center
        password.attributedPlaceholder = NSAttributedString(
            string: "Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        logInOutlet.layer.cornerRadius = 10.0
        signInOutlet.layer.cornerRadius = 10.0
        //TextView giving a Link
        let attributedString = NSMutableAttributedString(string: "By pressing LOGIN you agree to the End User License Agreement and authorise and Consent to the collection use and processing of your GPS location and driving application data. ")
        attributedString.addAttribute(.link, value: "https://www.hackingwithswift.com", range: NSRange(location: 34, length: 28))
        //assigning the new value
        textView.attributedText = attributedString
        textView.textAlignment = .center
        textView.textColor = UIColor(named: "textFieldColor")
        //add icon in textfields
        let imageView = UIImageView(frame: CGRect(x: 20.0, y: 12.0, width: 15.0, height: 15.0))
        let image = UIImage(named: "Path 17340")
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 45, height: 40))
        view.addSubview(imageView)
        userName.leftViewMode = UITextField.ViewMode.always
        userName.leftView = view
        //paswordicon
        let pwImageView = UIImageView(frame: CGRect(x: 20.0, y: 12.0, width: 15.0, height: 15.0))
        let pwImage = UIImage(named: "Path 2923")
        pwImageView.image = pwImage
        pwImageView.contentMode = .scaleAspectFit
        let view2 = UIView(frame: CGRect(x: 0, y: 0, width: 45, height: 40))
        view2.addSubview(pwImageView)
        password.leftViewMode = UITextField.ViewMode.always
        password.leftView = view2
        //rightimageicon passwordtextfield
        let rightImageView = UIImageView(frame: CGRect(x: 0.0, y: 10.0, width: 16.0, height: 15.0))
        let rightImage = UIImage(named: "Path 2922")
        rightImageView.image = rightImage
        pwImageView.contentMode = .scaleAspectFit
        let view3 = UIView(frame: CGRect(x: 0, y: 0, width: 45, height: 40))
        view3.addSubview(rightImageView)
        password.rightViewMode = UITextField.ViewMode.always
        password.rightView = view3
        
        userName.text = "12@12.com"
        password.text = "123456"
        
    }
    //if the TextField (which the user will use to enter her/his name) is not empty. If it isn’t it stores the value from the TextField to UserDefaults, using the key
    
    @IBAction func Login(_ sender: UIButton) {
        
        let email = userName.text
        let password = password.text
      
        
        Auth.auth().signIn(withEmail: email!, password: password!) {  authResult, error in
            if let e = error{
                print("-------------------------------------")
                print(e)
                // TODO Show alert
            } else {
                if let token = authResult?.user.refreshToken {
                    // save token to preferences
                    UserDefaults.standard.set(token, forKey:"userID")
                    print("This under is Token")
                    print(token)
                  //  self.navigationController?.dismiss(animated: true)
                   // self.dismiss(animated: true, completion: nil)
                    self.navigationController?.popViewController(animated: false)
                    self.dismiss(animated: false, completion: nil)
                }
            }
        }
    }
    //asks delegiate if textview has url, characterRange, interection and if it foes shoul open the link
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        UIApplication.shared.open(URL)
        return false
    }
    
    @IBAction func rememberMeBtn(_ sender: UIButton) {
        
        if sender.isSelected{
            sender.isSelected = false
        }else{
            sender.isSelected = true
        }
        print("buttonPressed")
    }
}







