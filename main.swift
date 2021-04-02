import Foundation

struct MPC {

    // MARK: - Constructor(s).

    init(modules: [Module] = [ Core() ]) {
        modules.forEach(Store.shared.add(module:))
    }
}