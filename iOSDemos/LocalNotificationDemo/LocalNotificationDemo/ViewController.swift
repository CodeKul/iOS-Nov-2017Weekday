//
//  ViewController.swift
//  LocalNotificationDemo
//
//  Created by Varun on 02/02/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController, UNUserNotificationCenterDelegate {

    var center : UNUserNotificationCenter?

    override func viewDidLoad() {
        super.viewDidLoad()

        createLocalNotification()
    }

    func createLocalNotification() {
        
        let content = UNMutableNotificationContent()
        content.title = NSString.localizedUserNotificationString(forKey: "Wake up!", arguments: nil)
        content.body = NSString.localizedUserNotificationString(forKey: "Rise and shine! It's morning time!", arguments: nil)
        content.sound = UNNotificationSound.default()
        
        var dateInfo = DateComponents()
        dateInfo.hour = 17
        dateInfo.minute = 32
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateInfo, repeats: false)
        
        let request = UNNotificationRequest(identifier: "MorningAlarm", content: content, trigger: trigger)
        
        center = UNUserNotificationCenter.current()
        center?.delegate = self
        center?.add(request) { (error : Error?) in
            if let theError = error {
                print(theError.localizedDescription)
            }
        }
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        
        let title = notification.request.content.title
        let body = notification.request.content.body
        
        let alert = UIAlertController(title: title, message: body, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (OK) in
            
        }))
        self.present(alert, animated: true, completion: nil)
        
        completionHandler(UNNotificationPresentationOptions.sound)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
}

