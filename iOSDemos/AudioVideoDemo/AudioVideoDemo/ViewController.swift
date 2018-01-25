//
//  ViewController.swift
//  AudioVideoDemo
//
//  Created by Varun on 25/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createAudioPlayer()
    }
    
    @IBAction func playAudioButtonClicked (_ sender : UIButton) {
        
        audioPlayer?.play()
    }
    @IBAction func pauseAudioButtonClicked (_ sender : UIButton) {
        audioPlayer?.pause()
    }
    
    @IBAction func stopAudioButtonClicked (_ sender : UIButton) {
        audioPlayer?.stop()
    }

    @IBAction func playVideoButtonClicked (_ sender : UIButton) {
        
        playVideoFile()
        
    }

    func createAudioPlayer() {
        guard let url = Bundle.main.url(forResource: "Spiderman", withExtension: "mp3") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            audioPlayer = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
        } catch let error {

        }
    }

    func playVideoFile() {
        let videoURL = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
        let player = AVPlayer(url: videoURL!)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        self.present(playerViewController, animated: true) {
            playerViewController.player!.play()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

