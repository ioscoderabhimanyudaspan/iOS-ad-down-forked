//
//  CodeBlock.swift
//  Down
//
//  Created by John Nguyen on 09.04.19.
//

import Foundation
import cmark_gfm

public class DownCodeBlock: BaseNode {

    // MARK: - Properties

    /// The code content, if present.

    public private(set) lazy var literalDown: String? = cmarkNode.literalDown

    /// The fence info is an optional string that trails the opening sequence of backticks.
    /// It can be used to provide some contextual information about the block, such as
    /// the name of a programming language.
    ///
    /// For example:
    /// ```
    /// '''<fence info>
    /// <literalDown>
    /// '''
    /// ```
    ///

    public private(set) lazy var fenceInfoDown: String? = cmarkNode.fenceInfoDown

}

// MARK: - Debug

extension DownCodeBlock: CustomDebugStringConvertible {

    public var debugDescription: String {
        let content = (literalDown ?? "nil").replacingOccurrences(of: "\n", with: "\\n")
        return "Code Block - fenceInfo: \(fenceInfoDown ?? "nil"), content: \(content)"
    }

}
