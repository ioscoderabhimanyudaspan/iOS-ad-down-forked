//
//  HtmlInline.swift
//  Down
//
//  Created by John Nguyen on 09.04.19.
//

import Foundation
import cmark_gfm

public class HtmlInline: BaseNode {

    // MARK: - Properties

    /// The html tag, if present.

    public private(set) lazy var literalDown: String? = cmarkNode.literalDown

}

// MARK: - Debug

extension HtmlInline: CustomDebugStringConvertible {

    public var debugDescription: String {
        return "Html Inline - \(literalDown ?? "nil")"
    }

}
