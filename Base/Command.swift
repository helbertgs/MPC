import Foundation

protocol Command {
    func `do`()
    func `try`() throws
}

extension Command {
    func `do`() { }
    func `try`() throws { }
}