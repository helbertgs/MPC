import Foundation

class Plugin: Object, Pluggable {

    // MARK: - Public Property(ies).

    var isEnable: Bool {
        willSet {
            newValue ? self.onEnable() : self.onDisable()
        }
    }

    unowned
    var module: Module

    // MARK: - Constructor(s).

    required init(on module: Module) {
        self.module = module
        self.isEnable = true
        
        super.init(name: "\(type(of: self))")
        self.onCreate()
    }

    deinit {
        self.onDestroy()
    }

    // MARK: - Open Function(s).

    open func onCreate() {
    }

    open func onDestroy() {
    }

    open func onEnable() {
    }

    open func onDisable() {
    }

    // MARK: - Public Function(s).

    func get<P: Pluggable>(plugin ofType: P.Type) -> P? {
        return self.module.get(plugin: ofType)
    }
}