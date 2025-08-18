//
//  BlockQuote.swift
//  Down
//
//  Created by John Nguyen on 09.04.19.
//

import Foundation
import cmark_gfm

public class DownBlockQuote: BaseNode {}

// MARK: - Debug

extension DownBlockQuote: CustomDebugStringConvertible {

    public var debugDescription: String {
        return "Block Quote"
    }

}
