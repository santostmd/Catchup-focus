//
//  DummyControl.swift
//  focus-tracker-demo
//
//  Created by Tiago dos Santos on 28/03/16.
//  Copyright © 2016 Tiago dos Santos. All rights reserved.
//

import AppKit

class DummyControl : NSControl {
    override func mouseDown(theEvent: NSEvent) {
        superview!.mouseDown(theEvent)
        sendAction(action, to: target)
    }
}

