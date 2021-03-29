//
//  ViewController.swift
//  AdvancedViews
//
//  Created by Marcelino Santana Truocchio on 27/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailViewComponent: UIView!
    @IBOutlet weak var passwordViewComponent: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addBottomBorders(emailViewComponent)
        addBottomBorders(passwordViewComponent)

        // Do any additional setup after loading the view.
    }
    @IBAction func forgotPasswordButton(_ sender: Any) {
        print("Esqueci minha senha")
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        print("Cadastre-se")
    }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            navigationController?.setNavigationBarHidden(true, animated: animated)
        }

        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            navigationController?.setNavigationBarHidden(false, animated: animated)
        }
    func addBottomBorders(_ view: UIView) {
           let thickness: CGFloat = 1.0
           let bottomBorder = CALayer()
           bottomBorder.frame = CGRect(x:0, y: view.frame.size.height - thickness, width: view.frame.size.width - 8, height:thickness)
           bottomBorder.backgroundColor = UIColor.white.cgColor
            view.layer.addSublayer(bottomBorder)
        }

}

