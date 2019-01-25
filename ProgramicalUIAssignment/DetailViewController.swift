//
//  DetailViewController.swift
//  ProgramicalUIAssignment
//
//  Created by Donkemezuo Raymond Tariladou on 1/24/19.
//  Copyright © 2019 EnProTech Group. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
let details = DetailVC()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        self.view.addSubview(details)
    }
    
    
    
    
    init(message: String) {
        
        super.init(nibName: nil, bundle: nil)
        
        details.myMessage.text = message
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
