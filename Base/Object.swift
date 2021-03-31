import Foundation

class Object {

// MARK: - Public Property(ies).

    var id: UUID
    var name: String

    // MARK: - Constructor(s).

    init(name: String) {
        self.id = .init()
        self.name = name
    }    
}