//
//  LineBreak.swift
//  Down
//
//  Created by John Nguyen on 09.04.19.
//

import Foundation
import cmark_gfm

public class DownLineBreak: BaseNode {}

// MARK: - Debug

extension DownLineBreak: CustomDebugStringConvertible {

    public var debugDescription: String {
        return "Line Break"
    }

}
