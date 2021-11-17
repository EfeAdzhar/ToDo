//  Player.swift
//  ToDo
//  Created by Efe on 17.11.2021.

import UIKit
import AVFoundation

class Player: UIViewController {
//MARK:Initialization
    @IBOutlet weak var slider: UISlider!
    
//MARK: Variables
    var player = AVAudioPlayer()
    
//MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        self.slider.minimumValue = 0.0
        self.slider.maximumValue = 100.0
//MARK: Targeting
        
        slider.addTarget(self, action: #selector(sliderDuration), for: .valueChanged)
//MARK: Creating Bundle and Duration
        
        do {
            if let audioPath = Bundle.main.path(forResource: "Михаил Круг - Владимирский Централ", ofType: "mp3") {
               try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
                self.slider.maximumValue = Float(player.duration)
            }
             }  catch {
                print("Error")
        }
    }
    
//MARK: Alert after View did Load
    override func viewDidAppear(_ animated: Bool) {
        alertAfterViewDidLoad(title: "Welcome To Player", message: "It's a Test", preferredStyle: .alert)
    }
    func alertAfterViewDidLoad(title : String, message : String, preferredStyle: UIAlertController.Style ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        let alertButton = UIAlertAction(title: "OK", style: .default, handler: .none)
        alert.addAction(alertButton)
        self.present(alert, animated: true, completion: .none)
    }
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: .none)
    }
    
//MARK: Duration
    @objc func sliderDuration(sender : UISlider) {
        if sender == slider {
            self.player.currentTime = TimeInterval(sender.value)
        }
    }
    
//MARK: Play Button Pressed
    @IBAction func playButtonPressed(_ sender: Any) {
        self.player.play()
    }
    
//MARK: Pause Button Pressed
    @IBAction func pauseButtonPressed(_ sender: Any) {
        self.player.pause()
    }
    
}
