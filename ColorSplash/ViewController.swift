//
//  ViewController.swift
//  ColorSplash
//
//  Created by Aadit Trivedi on 6/1/20.
//  Copyright © 2020 Aadit Trivedi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    @IBOutlet var backgroundView: UIView!
    @IBOutlet weak var splashButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    
    var redVal: Float = 0.0
    var greenVal: Float = 0.0
    var blueVal: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        splashButton.layer.cornerRadius = 25.0
        shareButton.layer.cornerRadius = 25.0
        redSlider.value = 0.5
        greenSlider.value = 0.5
        blueSlider.value = 0.5
        backgroundView.backgroundColor = UIColor.white
    }
    
    func updateUI(r: Float, g: Float, b: Float) {
        redValue.text = "\(Int(r * 255))"
        greenValue.text = "\(Int(g * 255))"
        blueValue.text = "\(Int(b * 255))"
        backgroundView.backgroundColor = UIColor(red: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: 1.0)
    }
    

    @IBAction func sliderChanged(_ sender: UISlider) {
        switch sender {
        case redSlider:
            redVal = sender.value
            updateUI(r: redVal, g: greenVal, b: blueVal)
        case greenSlider:
            greenVal = sender.value
            updateUI(r: redVal, g: greenVal, b: blueVal)
        case blueSlider:
            blueVal = sender.value
            updateUI(r: redVal, g: greenVal, b: blueVal)
        default:
            print("Error")
        }
    }
    
    @IBAction func splashPressed(_ sender: UIButton) {
        let r = Float.random(in: 0.0...1.0)
        let g = Float.random(in: 0.0...1.0)
        let b = Float.random(in: 0.0...1.0)
        redSlider.value = r
        greenSlider.value = g
        blueSlider.value = b
        updateUI(r: r, g: g, b: b)
    }
    

}

