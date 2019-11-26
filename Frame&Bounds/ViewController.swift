//
//  ViewController.swift
//  Frame&Bounds
//
//  Created by Oksana Dionisieva on 11/19/19.
//  Copyright © 2019 dioksa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var frameSlider: UISlider!
    @IBOutlet weak var boundsSlider: UISlider!
    
    @IBAction func handleFrameAction(_ sender: UISlider) {
        container.frame.origin.x = CGFloat(frameSlider.value)
        frameLabel.text = "Frame view высчитывается относительно координат superView. Если мы меняем X origin у frameLabel, то эта view двигается относительно X origin superView. Таким образом, если мы сдвигаем X origin у frameLabel, то она будет находится на \(Int(container.frame.origin.x)) px расстоянии от края superView."
    }
    
    @IBAction func handleBoundsAction(_ sender: UISlider) {
        container.bounds.origin.x = CGFloat(boundsSlider.value)
        boundsLabel.text = "Bounds высчитывается относительно своей системы координат. Меняя позицию X origin \(Int(container.bounds.origin.x)) мы передвигаемся по картинке, но сам frame остается неизменным."
    }
    
    @IBOutlet weak var container: UIView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var frameLabel: UILabel!
    @IBOutlet weak var boundsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        frameSlider.value = Float(container.frame.origin.x)
        boundsSlider.value = Float(container.bounds.origin.x)
        print("View frame при запуске приложения = \(container.frame)")
        print("View bounds при запуске приложения = \(backgroundImageView.bounds)")
    }
}
