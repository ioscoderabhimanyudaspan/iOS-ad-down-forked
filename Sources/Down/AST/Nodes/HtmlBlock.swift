//
//  HtmlBlock.swift
//  Down
//
//  Created by John Nguyen on 09.04.19.
//

import Foundation
import cmark_gfm

public class HtmlBlock: BaseNode {

    // MARK: - Properties

    /// The html content, if present.

    public private(set) lazy var literalDown: String? = cmarkNode.literalDown

}

// MARK: - Debug

extension HtmlBlock: CustomDebugStringConvertible {

    public var debugDescription: String {
        let content = (literalDown ?? "nil").replacingOccurrences(of: "\n", with: "\\n")
        return "Html Block - content: \(content)"
    }

}
