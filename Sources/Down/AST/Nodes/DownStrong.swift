//
//  Strong.swift
//  Down
//
//  Created by John Nguyen on 09.04.19.
//

import Foundation
import cmark_gfm

public class DownStrong: BaseNode {}

// MARK: - Debug

extension DownStrong: CustomDebugStringConvertible {

    public var debugDescription: String {
        return "Strong"
    }

}
