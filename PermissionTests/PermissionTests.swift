//
//  PermissionTests.swift
//  PermissionTests
//
//  Created by James Sodini on 5/18/18.
//  Copyright © 2018 James Sodini. All rights reserved.
//

import XCTest
@testable import Permission

class PermissionTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testPermissionValueWhenReadAndWriteAndExecute() {
        let permissions = Permissions(hasRead: true,
                                      hasWrite: true,
                                      hasExecute: true)
        XCTAssertEqual(7, permissions.value())
    }

    func testPermissionValueWhenReadAndWrite() {
        let permissions = Permissions(hasRead: true,
                                      hasWrite: true,
                                      hasExecute: false)
        XCTAssertEqual(6, permissions.value())
    }

    func testPermissionValueWhenReadAndExecute() {
        let permissions = Permissions(hasRead: true,
                                      hasWrite: false,
                                      hasExecute: true)
        XCTAssertEqual(5, permissions.value())
    }

    func testPermissionValueWhenReadOnly() {
        let permissions = Permissions(hasRead: true,
                                      hasWrite: false,
                                      hasExecute: false)
        XCTAssertEqual(4, permissions.value())
    }

    func testPermissionValueWhenWriteAndExecute() {
        let permissions = Permissions(hasRead: false,
                                      hasWrite: true,
                                      hasExecute: true)
        XCTAssertEqual(3, permissions.value())
    }

    func testPermissionValueWhenWriteOnly() {
        let permissions = Permissions(hasRead: false,
                                      hasWrite: true,
                                      hasExecute: false)
        XCTAssertEqual(2, permissions.value())
    }

    func testPermissionValueWhenExecuteOnly() {
        let permissions = Permissions(hasRead: false,
                                      hasWrite: false,
                                      hasExecute: true)
        XCTAssertEqual(1, permissions.value())
    }

    func testPermissionValueWhenNoAccess() {
        let permissions = Permissions(hasRead: false,
                                      hasWrite: false,
                                      hasExecute: false)
        XCTAssertEqual(0, permissions.value())
    }

}
