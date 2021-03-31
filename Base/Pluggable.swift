import Foundation

protocol Pluggable: Object {

    // MARK: - Public Property(ies).

    var isEnable: Bool { get set }
    var module: Module { get }

    // MARK: - Constructor(s).

    init(on module: Module)

    // MARK: - Function(s).

    func onCreate()
    func onDestroy()
    func onEnable()
    func onDisable()
}