import Foundation

public protocol Object {
    var id: UUID { get }
    var name: String { get }
}

extension Object {
    var id: UUID { return UUID() }
    var name: String { return "\(Self.self)" }
}