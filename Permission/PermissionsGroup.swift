//
//  PermissionsGroup.swift
//  Permission
//
//  Created by James Sodini on 5/18/18.
//  Copyright © 2018 James Sodini. All rights reserved.
//

import Foundation

class PermissionsGroup {
    let ownerPermissions: Permissions
    let groupPermissions: Permissions
    let otherPermissions: Permissions

    init(owner: Permissions, group: Permissions, other: Permissions) {
        ownerPermissions = owner
        groupPermissions = group
        otherPermissions = other
    }

    static func create(ownerRead: Bool,
                       ownerWrite: Bool,
                       ownerExecute: Bool,
                       groupRead: Bool,
                       groupWrite: Bool,
                       groupExecute: Bool,
                       otherRead: Bool,
                       otherWrite: Bool,
                       otherExecute: Bool) -> PermissionsGroup {
        let ownerPermissions = Permissions(hasRead: ownerRead,
                                           hasWrite: ownerWrite,
                                           hasExecute: ownerExecute)
        let groupPermissions = Permissions(hasRead: groupRead,
                                           hasWrite: groupWrite,
                                           hasExecute: groupExecute)
        let otherPermissions = Permissions(hasRead: otherRead,
                                           hasWrite: otherWrite,
                                           hasExecute: otherExecute)

        return PermissionsGroup(owner: ownerPermissions,
                                group: groupPermissions,
                                other: otherPermissions)
    }

    func value() -> Int {
        let ownerValue: Int = ownerPermissions.value()
        let groupValue: Int = groupPermissions.value()
        let otherValue: Int = otherPermissions.value()

        let chmodValue: String = "\(ownerValue)\(groupValue)\(otherValue)"

        return Int(chmodValue)!
    }

}
