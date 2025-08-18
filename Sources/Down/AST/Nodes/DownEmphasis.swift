//
//  Emphasis.swift
//  Down
//
//  Created by John Nguyen on 09.04.19.
//

import Foundation
import cmark_gfm

public class DownEmphasis: BaseNode {}

// MARK: - Debug

extension DownEmphasis: CustomDebugStringConvertible {

    public var debugDescription: String {
        return "Emphasis"
    }

}
