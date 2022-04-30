//
//  gameplay.swift
//  FitLift
//
//  Created by Catherine on 11/04/2022.
//

import Foundation
import UIKit
import AVKit
import AVFoundation

    class ViewController: UIViewController,AVPlayerViewControllerDelegate
    {
        var playerController = AVPlayerViewController()


        @IBAction func Play(_ sender: Any)
        {
            let path = Bundle.main.path(forResource: "video", ofType: "mp4")

            let url = NSURL(fileURLWithPath: path!)

            let player = AVPlayer(url:url as URL)

            playerController = AVPlayerViewController()


            NotificationCenter.default.addObserver(self, selector: selector(ViewController.didfinishplaying(note:)),name:NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: player.currentItem)

            playerController.player = player

            playerController.allowsPictureInPicturePlayback = true

            playerController.delegate = self

            playerController.player?.play()

            self.present(playerController,animated:true,completion:nil)
        }

        func didfinishplaying(note : NSNotification)
        {
            playerController.dismiss(animated: true,completion: nil)
            let alertview = UIAlertController(title:"finished",message:"video finished",preferredStyle: .alert)
            alertview.addAction(UIAlertAction(title:"Ok",style: .default, handler: nil))
            self.present(alertview,animated:true,completion: nil)
        }


        func playerViewController(_ playerViewController: AVPlayerViewController, restoreUserInterfaceForPictureInPictureStopWithCompletionHandler completionHandler: @escaping (Bool) -> Void) {
                let currentviewController =  navigationController?.visibleViewController

                if currentviewController != playerViewController
                {
                    currentviewController?.present(playerViewController,animated: true,completion:nil)
                }


            }
    }
