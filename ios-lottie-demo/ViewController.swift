//
//  ViewController.swift
//  ios-lottie-demo
//
//  Created by Brenden Vogt on 12/27/18.
//  Copyright © 2018 BrendenVogt. All rights reserved.
//

import UIKit
import Lottie

class LottieCell : UICollectionViewCell {
    
    public var animationName : String = "" {
        didSet {
            animationView.animation = animationName
        }
    }
    
    var animationView : LOTAnimationView = {
        let animationView = LOTAnimationView(frame: .zero)
        animationView.animationSpeed = 0.5
        animationView.backgroundColor = .white
        animationView.loopAnimation = true
        return animationView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setup(){
        self.contentView.addSubview(animationView)
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.widthAnchor.constraint(equalTo: self.contentView.widthAnchor).isActive = true
        animationView.heightAnchor.constraint(equalTo: self.contentView.heightAnchor).isActive = true
        animationView.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor).isActive = true
        animationView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
    }
    
}

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    var animations : [String] = [
        "Download_Down",
        "Padlock_UnlockIt",
        "PieChart_AnimOff",
        "PriceTag_AnimOn",
        "Home_AnimOn",
        "Printer_AnimOff",
        "Text_AnimOn",
        "Eye_Blinks",
        "Telephone_AnimOff",
        "Eye_AnimOff",
        "LoudMute_Loud",
        "UsePencil_AnimOn",
        "Thumbsdown_AnimOff",
        "MagnifyingGlass_AnimOff",
        "Screen_AnimOn",
        "Alarm_AnimOff",
        "Minimize_AnimOn",
        "Alarm_Ring",
        "LoudMute_Mute",
        "Share_AnimOn",
        "SpeechBubble_AnimOff",
        "Text_AnimOff",
        "Printer_AnimOn",
        "Minimize_AnimOff",
        "ShoppingCart_AnimOff",
        "FeverChart_AnimOff",
        "Maximize_AnimOn",
        "Screen_AnimOff",
        "Thumbsdown_Animate",
        "Eye_AnimOn",
        "Reload_AnimOn",
        "Reload_AnimOff",
        "Alarm_AnimOn",
        "Globe_AnimOn",
        "Heart_Beat",
        "Thumbsup_Animate",
        "Telephone_Ring",
        "Thumbsdown_AnimOn",
        "Share_AnimOff",
        "PriceTag_AnimOff",
        "BarChart_AnimOn",
        "BarChart_AnimOff",
        "Camera_AnimOn",
        "UsePencil_AnimOff",
        "Heart_AnimOn",
        "Printer_Print",
        "Thumbsup_AnimOff",
        "SpeechBubble_Dots",
        "Heart_AnimOff",
        "Camera_Flash",
        "ShoppingCart_AnimOn",
        "Home_AnimOff",
        "Globe_AnimOff",
        "Paper_AnimOff",
        "FeverChart_AnimOn",
        "Paper_AnimOn",
        "PieChart_AnimOn",
        "Padlock_LockIt",
        "Telephone_AnimOn",
        "Download_AnimOn",
        "Maximize_AnimOff",
        "MagnifyingGlass_AnimOn",
        "Thumbsup_AnimOn",
        "Camera_AnimOff",
        "SpeechBubble_AnimOn",
        "Download_AnimOff"
    ]
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! LottieCell
        
        cell.animationName = animations[indexPath.item]
        cell.animationView.play()
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return animations.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: 100, height: 100)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(LottieCell.self, forCellWithReuseIdentifier: "cell")
    }


}


