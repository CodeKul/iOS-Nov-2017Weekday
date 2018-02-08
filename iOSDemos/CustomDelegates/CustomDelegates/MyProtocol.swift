//
//  MyProtocol.swift
//  CustomDelegates
//
//  Created by Varun on 08/02/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import Foundation

@objc protocol MyProtocol {
    
    func changeLabelText(text: String)
    @objc optional func changeBackgroundColor()
}
