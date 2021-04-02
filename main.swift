import Foundation

struct MPC {

    // MARK: - Constructor(s).

    init(modules: [Module] = [ Core() ]) {
        modules.forEach(Store.shared.add(module:))
    }
}

let core = Core()
let live = core.get(plugin: Live.self)

live?.play()