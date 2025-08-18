//
//  SoftBreak.swift
//  Down
//
//  Created by John Nguyen on 09.04.19.
//

import Foundation
import cmark_gfm

public class DownSoftBreak: BaseNode {}

// MARK: - Debug

extension DownSoftBreak: CustomDebugStringConvertible {

    public var debugDescription: String {
        return "Soft Break"
    }

}
