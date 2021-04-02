import Foundation

class Plugin: Object {

    // MARK: - Public Property(ies).
    
    unowned var module: Module
    var isEnable: Bool {
        willSet { newValue ? self.onEnable() : self.onDisable() }
    }  

    // MARK: - Constructor(s).

    required init(on module: Module) {
        self.module = module
        self.isEnable = true

        self.onCreate()
    }

    deinit { self.onDestroy() }

    // MARK: - Open Function(s).

    open func onCreate() { }

    open func onDestroy() { }

    open func onEnable() { }

    open func onDisable() { }

    open func listen(command: Command) { }

    // MARK: - Public Function(s).

    func get<P: Plugin>(plugin ofType: P.Type) -> P? {
        return self.module.get(plugin: ofType)
    }

    func dispatch(command: Command) {
        self.module.listen(command: command)
    }
}