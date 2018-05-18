//
//  Permissions.swift
//  Permission
//
//  Created by James Sodini on 5/18/18.
//  Copyright © 2018 James Sodini. All rights reserved.
//

import Foundation

class Permissions {
    let hasRead: Bool
    let hasWrite: Bool
    let hasExecute: Bool

    init(hasRead: Bool, hasWrite: Bool, hasExecute: Bool) {
        self.hasRead = hasRead
        self.hasWrite = hasWrite
        self.hasExecute = hasExecute
    }

    func value() -> Int {
        var value: Int = 0

        if hasRead {
            value += 4
        }

        if hasWrite {
            value += 2
        }

        if hasExecute {
            value += 1
        }

        return value
    }
}
