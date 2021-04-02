import Foundation 

class Core: Module {

    // MARK: - Public Property(ies).

    var isHidden: Bool
    var isEnable: Bool
    
    // MARK: - Constructor(s).

    required init() {
        self.isHidden = false
        self.isEnable = true
    }

    // MARK: - Function(s).

    func listen(command: Command) {
        
    }
}