//
//  InterfaceController.swift
//  saltcarx WatchKit Extension
//
//  Created by Talha Salt on 17.05.2019.
//  Copyright © 2019 Talha Salt. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController,WKCrownDelegate {

    override func willActivate() {
        super.willActivate()
        print("Aktif");
        crownSequencer.delegate = self
        crownSequencer.focus()
    }
    
    func crownDidRotate(_ crownSequencer: WKCrownSequencer?, rotationalDelta: Double) {
        print(rotationalDelta)
        if rotationalDelta >= 0 {
            print("ileri gidiyor")
        } else {
            print("geri gidiyor")
        }
    }

}
