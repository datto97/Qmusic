//
//  LoginViewController.swift
//  Qmusic
//
//  Created by QuangHo on 13/08/2023.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfEmail.attributedPlaceholder = NSAttributedString(
                string: "E mail",
                attributes: [NSAttributedString.Key.foregroundColor: UIColor(hexString: "9F9F9F")]
            )
        
        tfPassword.attributedPlaceholder = NSAttributedString(
                string: "Password",
                attributes: [NSAttributedString.Key.foregroundColor: UIColor(hexString: "9F9F9F")]
            )
        
        // Do any additional setup after loading the view.
    }

    @IBAction func actionBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func actionSignUp(_ sender: Any) {
        let vc = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}