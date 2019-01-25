//
//  DetailVC.swift
//  ProgramicalUIAssignment
//
//  Created by Donkemezuo Raymond Tariladou on 1/24/19.
//  Copyright © 2019 EnProTech Group. All rights reserved.
//

import UIKit

class DetailVC: UIView {

    lazy var myMessage: UILabel = {
        let textMessage = UILabel()
        textMessage.text = "Hey young world"
        textMessage.textColor = .red
        textMessage.backgroundColor = .white
        return textMessage
        
    }()
 
    override init(frame:CGRect){
        super.init(frame: UIScreen.main.bounds)
        addSubview(myMessage)
        setConstrains()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setConstrains(){
        myMessage.translatesAutoresizingMaskIntoConstraints = false
        myMessage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30).isActive = true
        myMessage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
        myMessage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 160).isActive = true
    }
}


