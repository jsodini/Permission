//
//  ViewController.swift
//  Permission
//
//  Created by James Sodini on 5/18/18.
//  Copyright © 2018 James Sodini. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var ownerRead: NSButton!
    @IBOutlet weak var ownerWrite: NSButton!
    @IBOutlet weak var ownerExecute: NSButton!
    
    @IBOutlet weak var groupRead: NSButton!
    @IBOutlet weak var groupWrite: NSButton!
    @IBOutlet weak var groupExecute: NSButton!

    @IBOutlet weak var otherRead: NSButton!
    @IBOutlet weak var otherWrite: NSButton!
    @IBOutlet weak var otherExecute: NSButton!

    @IBOutlet weak var chmodBox: NSTextField!

    @IBAction func updatePermissions(_ sender: Any) {
        let group = PermissionsGroup.create(ownerRead: ownerRead.state.rawValue == 1,
                                            ownerWrite: ownerWrite.state.rawValue == 1,
                                            ownerExecute: ownerExecute.state.rawValue == 1,
                                            groupRead: groupRead.state.rawValue == 1,
                                            groupWrite: groupWrite.state.rawValue == 1,
                                            groupExecute: groupExecute.state.rawValue == 1,
                                            otherRead: otherRead.state.rawValue == 1,
                                            otherWrite: otherWrite.state.rawValue == 1,
                                            otherExecute: otherExecute.state.rawValue == 1)

        let chmodValue = String(group.value())
        chmodBox.stringValue = chmodValue
    }

    @IBAction func copyToClipboard(_ sender: Any) {
        let pasteboard = NSPasteboard.general
        pasteboard.clearContents()
        pasteboard.setString(chmodBox.stringValue, forType: .string)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updatePermissions(self)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

}
