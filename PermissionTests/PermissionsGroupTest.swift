//
//  PermissionsGroupTest.swift
//  Permission
//
//  Created by James Sodini on 5/18/18.
//  Copyright © 2018 James Sodini. All rights reserved.
//

import XCTest

class PermissionsGroupTest: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testPermissionsGroupValue() {
        let permissionsGroup = PermissionsGroup.create(ownerRead: true,
                                                       ownerWrite: true,
                                                       ownerExecute: true,
                                                       groupRead: true,
                                                       groupWrite: false,
                                                       groupExecute: true,
                                                       otherRead: true,
                                                       otherWrite: false,
                                                       otherExecute: false)
        XCTAssertEqual(754, permissionsGroup.value())
    }

}
