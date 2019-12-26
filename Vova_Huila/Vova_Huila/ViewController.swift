//
//  ViewController.swift
//  Vova_Huila
//
//  Created by Oleksii Kolakovskyi on 12/12/19.
//  Copyright © 2019 Aleksey. All rights reserved.
//

import UIKit
import AudioToolbox

class SimpleSound {
    
    private var soundID: SystemSoundID = 0
    
    public init(named name: String) {
        if let soundURL = soundURL(forName: name) {
            let status = AudioServicesCreateSystemSoundID(soundURL as CFURL, &soundID)
            if status != noErr {
                print("Unable to create sound at URL: '\(name)'")
                soundID = 0
            }
        }
    }
    
    public func play() {
        if soundID != 0 {
            AudioServicesPlaySystemSound(soundID)
        }
    }
    
    private func soundURL(forName name: String) -> URL? {
        
        let fileExtensions = ["m4a", "wav", "mp3", "aac", "adts", "aif", "aiff", "aifc", "caf", "mp4"]
        
        for fileExtention in fileExtensions {
            if let soundURL = Bundle.main.url(forResource: name, withExtension: fileExtention) {
                return soundURL
            }
        }
        print("Unable to find sound file with name '\(name)'")
        return nil
    }
    
    deinit {
        if soundID != 0 {
            AudioServicesDisposeSystemSoundID(soundID)
        }
    }
}

class ViewController: UIViewController {
    
    
    var volodkaHidden = true
    let sound = SimpleSound(named: "yoba")
    
    @IBOutlet weak var imageVIew: UIImageView!
    @IBOutlet weak var volodkaLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    
    @IBAction func button(_ sender: Any) {
        
        if volodkaHidden == true {
            sound.play()
            imageVIew.image = UIImage.init(named: "volodka.jpeg")
            volodkaHidden = false
            button1.setTitle("СПРЯТАТЬ ВОЛОДЬКУ", for: .normal)
            volodkaLabel.isHidden = false
            
        } else if volodkaHidden == false {
            imageVIew.image = UIImage.init(named: "1")
            button1.setTitle("ПОКАЗАТЬ ВОЛОДЬКУ", for: .normal)
            volodkaLabel.isHidden = true
            volodkaHidden = true
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageVIew.image = UIImage.init(named: "1")
        // Do any additional setup after loading the view.
        button1.setTitle("ПОКАЗАТЬ ВОЛОДЬКУ", for: .normal)
        volodkaLabel.isHidden = true
    }
    
    
}

