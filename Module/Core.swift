import Foundation 

class Core: Module {

    // MARK: Constructor(s).

    init() {
        super.init(with: [Debugger.self])
    }
}