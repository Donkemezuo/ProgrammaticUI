//
//  ViewController.swift
//  ProgramicalUIAssignment
//
//  Created by Donkemezuo Raymond Tariladou on 1/24/19.
//  Copyright © 2019 EnProTech Group. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let mainView = MainView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        self.view.addSubview(mainView)
        mainView.delegate = self
    }


}
extension ViewController: MainViewDelegate {
    func segueButtonPressed() {
        let destination = DetailViewController.init(message: mainView.myTextField.text ?? "")
       
      navigationController?.pushViewController(destination, animated: true)
    }
    
    
}

