//
//  DownHeading.swift
//  Down
//
//  Created by John Nguyen on 09.04.19.
//

import Foundation
import cmark_gfm

public class DownHeading: BaseNode {

    // MARK: - Properties

    /// The level of the heading, a value between 1 and 6.

    public private(set) lazy var headingLevelDown: Int = cmarkNode.headingLevelDown
}

// MARK: - Debug

extension DownHeading: CustomDebugStringConvertible {

    public var debugDescription: String {
        return "Heading - L\(headingLevelDown)"
    }

}
