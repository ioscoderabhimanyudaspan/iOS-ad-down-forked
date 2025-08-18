//
//  Vistor.swift
//  Down
//
//  Created by John Nguyen on 07.04.19.
//

import Foundation

/// Visitor describes a type that is able to traverse the abstract syntax tree. It visits
/// each node of the tree and produces some result for that node. A visitor is "accepted" by
/// the root node (of type `Document`), which will start the traversal by first invoking
/// `visit(document:)`.

public protocol Visitor {

    associatedtype Result

    func visit(document node: Document) -> Result
    func visit(blockQuote node: DownBlockQuote) -> Result
    func visit(list node: List) -> Result
    func visit(item node: Item) -> Result
    func visit(codeBlock node: DownCodeBlock) -> Result
    func visit(htmlBlock node: HtmlBlock) -> Result
    func visit(customBlock node: CustomBlock) -> Result
    func visit(paragraph node: DownParagraph) -> Result
    func visit(heading node: DownHeading) -> Result
    func visit(thematicBreak node: DownThematicBreak) -> Result
    func visit(text node: DownText) -> Result
    func visit(softBreak node: DownSoftBreak) -> Result
    func visit(lineBreak node: DownLineBreak) -> Result
    func visit(code node: DownCode) -> Result
    func visit(htmlInline node: HtmlInline) -> Result
    func visit(customInline node: CustomInline) -> Result
    func visit(emphasis node: DownEmphasis) -> Result
    func visit(strong node: DownStrong) -> Result
    func visit(link node: Link) -> Result
    func visit(image node: DownImage) -> Result
    func visitChildren(of node: Node) -> [Result]

}

extension Visitor {

    public func visitChildren(of node: Node) -> [Result] {
        return node.childSequence.compactMap { child in
            switch child {
            case let child as Document:       return visit(document: child)
            case let child as DownBlockQuote:     return visit(blockQuote: child)
            case let child as List:           return visit(list: child)
            case let child as Item:           return visit(item: child)
            case let child as DownCodeBlock:      return visit(codeBlock: child)
            case let child as HtmlBlock:      return visit(htmlBlock: child)
            case let child as CustomBlock:    return visit(customBlock: child)
            case let child as DownParagraph:      return visit(paragraph: child)
            case let child as DownHeading:        return visit(heading: child)
            case let child as DownThematicBreak:  return visit(thematicBreak: child)
            case let child as DownText:           return visit(text: child)
            case let child as DownSoftBreak:      return visit(softBreak: child)
            case let child as DownLineBreak:      return visit(lineBreak: child) //d
            case let child as DownCode:           return visit(code: child) //d
            case let child as HtmlInline:     return visit(htmlInline: child)
            case let child as CustomInline:   return visit(customInline: child)
            case let child as DownEmphasis:       return visit(emphasis: child) //d
            case let child as DownStrong:         return visit(strong: child) //d
            case let child as Link:           return visit(link: child)
            case let child as DownImage:          return visit(image: child)
            default:
                assertionFailure("Unexpected child")
                return nil
            }
        }
    }

}
