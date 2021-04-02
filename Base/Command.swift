import Foundation

protocol Command {
    func `do`()
    func `try`() throws
}