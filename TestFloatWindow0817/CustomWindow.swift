//
//  CustomWindow.swift
//  TestFloatWindow0817
//
//  Created by Yuan Zhou on 2018/08/18.
//  Copyright © 2018 Yuan Zhou. All rights reserved.
//

import UIKit

class CustomWindow: UIWindow {
    init() {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = nil
        isUserInteractionEnabled = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
