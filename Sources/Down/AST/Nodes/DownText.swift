//
//  Text.swift
//  Down
//
//  Created by John Nguyen on 09.04.19.
//

import Foundation
import cmark_gfm

public class DownText: BaseNode {

    // MARK: - Properties

    /// The text content, if present.

    public private(set) lazy var literalDown: String? = cmarkNode.literalDown

}

// MARK: - Debug

extension DownText: CustomDebugStringConvertible {

    public var debugDescription: String {
        return "Text - \(literalDown ?? "nil")"
    }

}
