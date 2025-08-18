//
//  Paragraph.swift
//  Down
//
//  Created by John Nguyen on 09.04.19.
//

import Foundation
import cmark_gfm

public class DownParagraph: BaseNode {}

// MARK: - Debug

extension DownParagraph: CustomDebugStringConvertible {

    public var debugDescription: String {
        return "Paragraph"
    }

}
