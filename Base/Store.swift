import Foundation 

final class Store {

    // MARK: - Private Property(ies).

    private var module: [Module]
    private var plugin: [Plugin]

    // MARK: - Public Property(ies).

    static let shared: Store = Store()

    // MARK: - Constructor(s).

    init() {
        self.module = []
        self.plugin = []
    }

    // MARK: - Public Function(s).

    func add(module: Module) {
        self.module.append(module)
    }

    func add(plugin: Plugin) {
        self.plugin.append(plugin)
    }

    func get<M: Module>(module ofType: M.Type) -> M? {
        return self.module.first { type(of: $0) == ofType } as? M
    }

    func get<P: Plugin>(plugin ofType: P.Type) -> P? {
        return self.plugin.first { type(of: $0) == ofType } as? P
    }

    func destroy<P: Plugin>(plugin ofType: P.Type) {
        self.plugin.removeAll { type(of: $0) == ofType }
    }
}