//
//  ViewController.swift
//  try_local_notification
//
//  Created by Wataru Maeda on 2017/12/31.
//  Copyright © 2017 com.watarumaeda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let pickerView: TimerPickerView = {
    let picker = TimerPickerView()
    picker.setupPicker()
    return picker
  }()
  
  let notificationButton: UICallbackButton = {
    let button = UICallbackButton()
    button.setupButton()
    return button
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    initViews()
    addTargets()
  }
}

// MARK: - UI

extension ViewController {
  
  func initViews() {
    view.addSubview(pickerView)
    view.addSubview(notificationButton)
    
    pickerView.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 20, leftConstant: 8, bottomConstant: 100, rightConstant: 8, widthConstant: 0, heightConstant: 0)
    
    notificationButton.anchor(pickerView.bottomAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 20, leftConstant: 8, bottomConstant: 8, rightConstant: 8, widthConstant: 0, heightConstant: 0)
  }
}

// MARK: - Actions

extension ViewController {
  
  func addTargets() {
    notificationButton.addHander(control: .touchUpInside) { _ in
      
    }
    pickerView.didSelectItem { (item) in
      
    }
  }
}
