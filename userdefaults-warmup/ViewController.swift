//
//  ViewController.swift
//  userdefaults-warmup
//
//  Created by David Rifkin on 9/27/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchLabel: UILabel!
    
    @IBOutlet weak var mySwitch: UISwitch!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setModeFromUserDefaults()
        mySwitch.transform = CGAffineTransform(scaleX: 2.75,y: 2.75 )
    }
    
    private func setModeFromUserDefaults() {
        
        if let mode = UserDefaultWrapper.manager.getMode() {
            mySwitch.isOn = mode
            switch mySwitch.isOn {
            case true:
                setLightMode()
            case false:
                setDarkMode()
            
                
            }
        }
    }
    
    private func setDarkMode() {
        switchLabel.text = "We are IN Dark Mode"
        self.view.backgroundColor = .black
        switchLabel.textColor = .white
        
    }
    
    private func setLightMode() {
        switchLabel.text = "We are NOT in Dark Mode"
        self.view.backgroundColor = .white
        switchLabel.textColor = .black
    }
    
    @IBAction func switchPressed(_ sender: UISwitch) {
        
        switch sender.isOn {
        case true:
            setLightMode()
            UserDefaultWrapper.manager.store(mode: true)
        default:
            setDarkMode()
            UserDefaultWrapper.manager.store(mode: false)
        }
    }
    


}

