//
//  ContentViewController.swift
//  focus-tracker-demo
//
//  Created by Tiago dos Santos on 28/03/16.
//  Copyright © 2016 Tiago dos Santos. All rights reserved.
//

import AppKit

class ContentViewController : NSViewController {
    
    var searchField : NSTextField!
    var setMessageBtt : NSButton!
    var views : NSDictionary!
    var btt_width = 50
    var btt_height = 30
    
    var myAuthorizationRef: AuthorizationRef!
    var myStatus : OSStatus!
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    override func loadView() {
        
        setMessageBtt = NSButton(frame: NSRect(x: 140-(btt_width/2), y: 10, width: btt_width, height: btt_height))
        setMessageBtt.title = "Sleep"
        setMessageBtt.setButtonType(NSButtonType.MomentaryLightButton)
        setMessageBtt.action = "setLoginMessage:"
        
        view = NSView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraint(NSLayoutConstraint(
            item: view, attribute: .Width, relatedBy: .Equal,
            toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 280))
        view.addConstraint(NSLayoutConstraint(
            item: view, attribute: .Height, relatedBy: .Equal,
            toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 200))
        
        searchField = NSTextField()
        searchField.translatesAutoresizingMaskIntoConstraints = false
        searchField.focusRingType = .None
        view.addSubview(searchField)
        view.addSubview(setMessageBtt)
        
        
        
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "H:|-(20)-[searchField]-(20)-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: ["searchField": searchField]))
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "V:|-(20)-[searchField]-(50)-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: ["searchField": searchField]))
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "onTextChange:", name: NSControlTextDidChangeNotification, object: searchField)
    }
    
    func onTextChange(note : NSNotification) {
        //NSLog("Search for %@", searchField.stringValue)
    }
    
    func setLoginMessage(obj:AnyObject?) {
        let txtLoginMsg = searchField.stringValue
        NSLog("Search for %@", txtLoginMsg)
        //let res = shell("sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText \" Try Number one \"")
        //NSLog("Result of script: %@", res)

    }
    
    func shell(args: String...) -> Int32 {
        let task = NSTask()
        task.launchPath = "/bin/bash"
        task.arguments = args
        task.launch()
        task.waitUntilExit()
        return task.terminationStatus
    }
    
}
