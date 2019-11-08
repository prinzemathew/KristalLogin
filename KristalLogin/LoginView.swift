//
//  LoginView.swift
//  commonlogin
//
//  Created by Prince Mathew on 07/11/19.
//  Copyright © 2019 Prince Mathew. All rights reserved.
//

import UIKit

public class LoginView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    @IBOutlet public weak var textFieldPassword: UITextField!
    @IBOutlet public weak var textFieldUserName: UITextField!
    @IBOutlet public weak var buttonLogin: UIButton!
    @IBOutlet var view: UIView!
    @IBOutlet public weak var labelPasswordError: UILabel!
    @IBOutlet public weak var labelUsernameError: UILabel!
    public var loginCompletion: ((String)-> Void)?
    
    
    @IBAction func loginTapped(_ sender: Any) {
        let validateResult = validateForm()
        if validateResult.userName.count > 0,
            validateResult.password.count > 0 {
            let token = validateResult.userName.appending(validateResult.password).sha256()
            loginCompletion?(token)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadViewFromNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadViewFromNib()
    }
    
    private func loadViewFromNib() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "LoginView", bundle: bundle)
        view = nib.instantiate(withOwner: self, options: nil).first as? UIView
        self.translatesAutoresizingMaskIntoConstraints = false;
        view.frame = self.frame;
        self.addSubview(view);
        textFieldUserName.text = ""
        textFieldPassword.text = ""
    }
    
    private func validateForm() -> (userName:String,password:String) {
        var userName: String = ""
        var password: String = ""
        if let _userName = textFieldUserName.text,
            _userName.count > 0 {
                userName = _userName
        } else {
            
        }
        if let _password = textFieldPassword.text,
            _password.count > 0 {
                password = _password
        } else {
            
        }
        return (userName,password)
    }
}
