//
//  Image.swift
//  Down
//
//  Created by John Nguyen on 09.04.19.
//

import Foundation
import cmark_gfm

public class DownImage: BaseNode {

    // MARK: - Properties

    /// The title of the image, if present.
    ///
    /// In the example below, the first line is a reference link, with the reference at the
    /// bottom. `<text>` is literalDown text belonging to children nodes. The title occurs
    /// after the url and is optional.
    ///
    /// ```
    /// ![<text>][<id>]
    /// ...
    /// [<id>]: <url> "<title>"
    /// ```

    public private(set) lazy var title: String? = cmarkNode.title

    /// The url of the image, if present.
    ///
    /// For example:
    ///
    /// ```
    /// ![<text>](<url>)
    /// ```

    public private(set) lazy var url: String? = cmarkNode.urlDown

}

// MARK: - Debug

extension DownImage: CustomDebugStringConvertible {

    public var debugDescription: String {
        return "Image - title: \(title ?? "nil"), url: \(url ?? "nil"))"
    }

}
