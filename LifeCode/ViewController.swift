//
//  ViewController.swift
//  LifeCode
//
//  Created by MEI KU on 2017/10/3.
//  Copyright © 2017年 Natalie KU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var selectedLabel: UILabel!
    
    @IBOutlet weak var birthDatePicker: UIDatePicker!
    
    @IBOutlet weak var yourCodeLabel: UILabel!
    
    @IBOutlet weak var lifeCodeLabel: UILabel!
    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var playAgianButton: UIButton!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func pressedButton(_ sender: Any) {
        
        selectedLabel.isHidden = true
        button.isHidden = true
        birthDatePicker.isHidden = true
        yourCodeLabel.isHidden = false
        lifeCodeLabel.isHidden = false
        descriptionTextView.isHidden = false
        playAgianButton.isHidden = false
        imageView.isHidden = false
        
    }
    
    @IBAction func playAgain(_ sender: Any) {
        
        selectedLabel.isHidden = false
        button.isHidden = false
        birthDatePicker.isHidden = false
        yourCodeLabel.isHidden = true
        lifeCodeLabel.isHidden = true
        descriptionTextView.isHidden = true
        playAgianButton.isHidden = true
       imageView.isHidden = true
    }
    
    
    
    @IBAction func birthDatePickerValueChanged(_ sender: UIDatePicker) {
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "YYYYMMdd"
    let birthday = dateFormatter.string(from: birthDatePicker.date)
   

        var lifecode1: Int = 0
        var lifecode2: Int = 0
        var lifecode3: Int = 0
        
        
        for i in birthday {
           let number = Int(String(i))
            lifecode1 = lifecode1 + number!
            print(lifecode1)
        }
        
        if lifecode1 < 10 {
            lifeCodeLabel.text = String(lifecode1)
            
        }
        else {
            
            let Code = String(Int(lifecode1))
            for index in Code {
                let Number = Int(String(index))
                lifecode2 = lifecode2 + Number!
            }
                if lifecode2 < 10 {
                    lifeCodeLabel.text = String(lifecode2)
                  
                    
                }
                else {
                    let Lifecode2 = String(Int(lifecode2))
                    for i in Lifecode2 {
                        let Supernumber = Int(String(i))
                        lifecode3 = lifecode3 + Supernumber!
                        lifeCodeLabel.text = String(lifecode3)
                        
                        
                    }
            }
            
            }
        
        func updateUI(lifeCode : LifeCode) {
            descriptionTextView.text = lifeCode.status
            switch lifeCode {
            case.one: imageView.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.831372549, blue: 0.7333333333, alpha: 1)
            case .two: imageView.backgroundColor = #colorLiteral(red: 0.7843137255, green: 0.768627451, blue: 0.7529411765, alpha: 1)
            case .three: imageView.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.937254902, blue: 0.8980392157, alpha: 1)
            case .four:imageView.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.6784313725, blue: 0.8588235294, alpha: 1)
            case .five:imageView.backgroundColor = #colorLiteral(red: 0.9764705882, green: 0.8039215686, blue: 0.5921568627, alpha: 1)
            case .six:imageView.backgroundColor = #colorLiteral(red: 0.6745098039, green: 0.6, blue: 0.7568627451, alpha: 1)
            case .seven:imageView.backgroundColor = #colorLiteral(red: 0.8588235294, green: 0.7921568627, blue: 0.4117647059, alpha: 1)
            case .eight:imageView.backgroundColor = #colorLiteral(red: 0.3176470588, green: 0.7529411765, blue: 0.7490196078, alpha: 1)
            case .nine:imageView.backgroundColor = #colorLiteral(red: 0.8588235294, green: 0.5529411765, blue: 0.6980392157, alpha: 1)
            }
        }
        
    
        if lifecode1 == 1 || lifecode2 == 1 || lifecode3 == 1 {
            updateUI(lifeCode: .one)
            
        }
        if lifecode1 == 2 || lifecode2 == 2 || lifecode3 == 2 {
            updateUI(lifeCode: .two)
        }
        if lifecode1 == 3 || lifecode2 == 3 || lifecode3 == 3{
            updateUI(lifeCode: .three)
        }
        if lifecode1 == 4 || lifecode2 == 4 || lifecode3 == 4 {
            updateUI(lifeCode: .four)
        }
        
        if lifecode1 == 5 || lifecode2 == 5 || lifecode3 == 5 {
            updateUI(lifeCode:.five)
        }
        if lifecode1 == 6 || lifecode2 == 6 || lifecode3 == 6{
            updateUI(lifeCode: .six)
        }
        if lifecode1 == 7 || lifecode2 == 7 || lifecode3 == 7 {
            updateUI(lifeCode: .seven)
        }
        if lifecode1 == 8 || lifecode2 == 8 || lifecode3 == 8{
            updateUI(lifeCode: .eight)
        }
        if lifecode1 == 9 || lifecode2 == 9 || lifecode3 == 9{
            updateUI(lifeCode: .nine)
        }
        
        
        
    }
        
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}

