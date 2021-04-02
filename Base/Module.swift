import Foundation

protocol Module: class, Object {

    // MARK: - Public Property(ies).

    var isHidden: Bool { get set }
    var isEnable: Bool { get set }
    
    // MARK: - Constructor(s).

    init()

    // MARK: Function(s).

    func register(plugins ofTypes: [Plugin.Type])
    func register(plugin ofType: Plugin.Type)
    func destroy(plugin ofType: Plugin.Type)
    func get<P: Plugin>(plugin ofType: P.Type) -> P?
    func listen(command: Command)
    func broadcast(command: Command)
}

extension Module {
    func register(plugins ofTypes: [Plugin.Type]) {
        ofTypes.forEach(register(plugin:))
    }

    func register(plugin ofType: Plugin.Type) {
        let plugin = ofType.init(on: self)
        Store.shared.add(plugin: plugin)
    }

    func destroy(plugin ofType: Plugin.Type) {
        Store.shared.destroy(plugin: ofType)
    }

    func get<P: Plugin>(plugin ofType: P.Type) -> P? {
        return Store.shared.get(plugin: ofType)
    }

    func broadcast(command: Command) {
        Store
            .shared
            .get(plugins: Self.self)
            .forEach { $0.listen(command: command) }
    }
}