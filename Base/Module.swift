import Foundation

class Module: Object {

    // MARK: - Public Property(ies).

    var isEnable: Bool = true {
        willSet {
            self.plugins.forEach {
                $0.isEnable = newValue
            }
        }
    }
    
    // MARK: - Private Property(ies).

    private var plugins: [Pluggable] = []

    // MARK: - Constructor(s).

    init(with plugins: [Pluggable.Type] = []) {
        super.init(name: "\(type(of: self))")

        plugins.forEach { p in
            let plugin = p.init(on: self)
            self.plugins.append(plugin)        
        }
    }

    // MARK: Function(s).

    func register(plugin ofType: Pluggable.Type) {
        let plugin = ofType.init(on: self)
        self.plugins.append(plugin)
    }

    func destroy(plugin ofType: Pluggable.Type) {
        self.plugins.removeAll { 
            type(of: $0) == ofType
        }
    }

    func get<P: Pluggable>(plugin ofType: P.Type) -> P? {
        let plugin = self
                .plugins
                .first { type(of: $0) == ofType } as? P 

        return plugin
    }
}