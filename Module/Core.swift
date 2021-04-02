import Foundation 

class Core: Module {

    // MARK: - Public Property(ies).

    var isHidden: Bool
    var isEnable: Bool
    
    // MARK: - Constructor(s).

    required init() {
        self.isHidden = false
        self.isEnable = true

        register(plugin: Live.self)
    }

    // MARK: - Function(s).

    func listen(command: Command) {
        guard let command = command as? AppCommand else { return }
        
        switch command {
            case .play: print("Play")
            case .pause: print("Pause")
        }
    }
}