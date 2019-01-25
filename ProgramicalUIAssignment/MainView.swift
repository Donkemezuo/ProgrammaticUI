//
//  MainView.swift
//  ProgramicalUIAssignment
//
//  Created by Donkemezuo Raymond Tariladou on 1/24/19.
//  Copyright © 2019 EnProTech Group. All rights reserved.
//

import UIKit

protocol MainViewDelegate: AnyObject {
    func segueButtonPressed()
}

class MainView: UIView {
    
    var delegate: MainViewDelegate?
    
    lazy var myTextField:UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .gray
       
        return textField
    }()
    
    
    lazy var segueButton: UIButton = {
        let seguingButton = UIButton()
            seguingButton.backgroundColor = .red
            seguingButton.setTitle("Click for Segue 🤪🤪🤪🤪 ", for: .normal)
        seguingButton.addTarget(self, action: #selector(segueButtonPressed), for: .touchUpInside)
        
        return seguingButton
    
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(myTextField)
        addSubview(segueButton)
        setButtonConstrains()
        setConstrains()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstrains(){
    
        myTextField.translatesAutoresizingMaskIntoConstraints = false
        myTextField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        myTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50).isActive = true
        myTextField.heightAnchor.constraint(equalToConstant: 70).isActive = true
        myTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50).isActive = true
    
        
    }
    
    func setButtonConstrains(){
        segueButton.translatesAutoresizingMaskIntoConstraints = false
        segueButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50).isActive = true
        segueButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50).isActive = true
       segueButton.topAnchor.constraint(equalTo: self.myTextField.bottomAnchor, constant: 30).isActive = true
    }
    
    
    @objc func segueButtonPressed(){
        delegate?.segueButtonPressed()
      
        
    }
    
}
