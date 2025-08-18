//
//  Code.swift
//  Down
//
//  Created by John Nguyen on 09.04.19.
//

import Foundation
import cmark_gfm

public class DownCode: BaseNode {

    // MARK: - Properties

    /// The code content, if present.

    public private(set) lazy var literalDown: String? = cmarkNode.literalDown

}

// MARK: - Debug

extension DownCode: CustomDebugStringConvertible {

    public var debugDescription: String {
        return "Code - \(literalDown ?? "nil")"
    }

}
