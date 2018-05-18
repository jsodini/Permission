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

    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

