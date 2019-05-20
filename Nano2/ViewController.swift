//
//  ViewController.swift
//  Nano2
//
//  Created by Kelvin Anderson Guanwan on 20/05/19.
//  Copyright © 2019 Kelvin Anderson Guanwan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var meButton2: UIButton!
    var colorPallete : [UIColor] = [
        #colorLiteral(red: 0.7045403123, green: 0.935441494, blue: 0, alpha: 1),#colorLiteral(red: 0, green: 0.9450980392, blue: 0.3490196078, alpha: 1),#colorLiteral(red: 0, green: 0.9459127784, blue: 0.8597326875, alpha: 1),#colorLiteral(red: 0.9834032655, green: 0.5875545144, blue: 0.1374124885, alpha: 1),#colorLiteral(red: 0.996968925, green: 0.4407495856, blue: 0.7675120234, alpha: 1),#colorLiteral(red: 0.9355785251, green: 0.896789372, blue: 0, alpha: 1),#colorLiteral(red: 0.9944210649, green: 0.4729726911, blue: 0.09393823892, alpha: 1),#colorLiteral(red: 0.9015598893, green: 0.9298865795, blue: 0.4859194756, alpha: 1),#colorLiteral(red: 0.4279085696, green: 0.4992975593, blue: 0.9588333964, alpha: 1),#colorLiteral(red: 0.9574916959, green: 0.7776038647, blue: 0.9214064479, alpha: 1)
    ]
    var shadowColorPallete : [CGColor] = [
        #colorLiteral(red: 0.7045403123, green: 0.935441494, blue: 0, alpha: 1),#colorLiteral(red: 0, green: 0.9450980392, blue: 0.3490196078, alpha: 1),#colorLiteral(red: 0, green: 0.9459127784, blue: 0.8597326875, alpha: 1),#colorLiteral(red: 0.9834032655, green: 0.5875545144, blue: 0.1374124885, alpha: 1),#colorLiteral(red: 0.996968925, green: 0.4407495856, blue: 0.7675120234, alpha: 1),#colorLiteral(red: 0.9355785251, green: 0.896789372, blue: 0, alpha: 1),#colorLiteral(red: 0.9944210649, green: 0.4729726911, blue: 0.09393823892, alpha: 1),#colorLiteral(red: 0.9015598893, green: 0.9298865795, blue: 0.4859194756, alpha: 1),#colorLiteral(red: 0.4279085696, green: 0.4992975593, blue: 0.9588333964, alpha: 1),#colorLiteral(red: 0.9574916959, green: 0.7776038647, blue: 0.9214064479, alpha: 1)
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        // Do any additional setup after loading the view.
//        customButton(buttonColor:meButton2)
        meColor()
        var tag: Int = 1
        for j in 0...8 {
            for i in 0...4 {
                let addButton = UIButton()
                addButton.frame = CGRect(x:15+(i*100), y: 25+(j*100), width: 125, height: 125)
                addButton.layer.cornerRadius = addButton.frame.width/2
                addButton.backgroundColor = nil
                addButton.tag = tag
                tag+=1
                addButton.addTarget(self, action: #selector(muncul), for: .touchUpInside )
                self.view.addSubview(addButton)
                self.view.sendSubviewToBack(addButton)
            }
        }
    }
   
    var countTap: Int = 0
    var duration: Double = 10
    var duration2 : Double = 2
    
    @objc func muncul(sender: UIButton!) {
        let randomNumber = Int.random(in: 0...9)
        sender.backgroundColor = colorPallete[randomNumber]
        sender.layer.shadowRadius = 30
        sender.layer.shadowColor = shadowColorPallete[randomNumber]
        sender.layer.shadowOpacity = 0.9
        sender.layer.shadowOffset = CGSize(width: 2,height: 2)
//        let timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(change), userInfo: nil, repeats: false)
        
        countTap += 1
        
        if countTap == 10 {
            duration = duration-2
        }else if countTap == 15 {
            duration = duration-2
        }else if countTap == 20 {
            duration = duration-2
        }else if countTap == 25 {
            duration = 1.5
            print(duration)
        }
    
//            sender.layer.removeAllAnimations()
        for view in self.view.subviews as [UIView] {
            if let btn = view as? UIButton {
                    
            }
        }
        
        print("\(countTap) -- \(duration)")
        
        UIView.animate(withDuration: duration) {
            sender.backgroundColor = nil
        }
    }
//    @objc func change()
//    {
//            sender.
//    }
    func meColor() {
    meButton2.layer.cornerRadius = meButton2.frame.width/2
//    colorButton.layer.cornerRadius = colorButton.frame.width/2
    
    view.backgroundColor = #colorLiteral(red: 0.09019607843, green: 0.09019607843, blue: 0.09019607843, alpha: 1)
    }
   
    func touch(){
//        addButton.frame = CGreact
        
//        colorButton.backgroundColor = cg1.
//        colorButton.layer.borderWidth = 10
//        colorButton.layer.borderColor = cg1.cgColor
//        colorButton.layer.shadowColor = cg1.cgColor
//        colorButton.layer.shadowOpacity = 0.8
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first{
            let position = touch.location(in: view)
            
        }
    }


}

