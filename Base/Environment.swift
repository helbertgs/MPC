import Foundation

enum Environment: Equatable, Hashable {

    // MARK: - Case(s).

    case debug, release

    // MARK: - Property(ies).

    var description: String {
        switch self {
            case .debug: return "Debug"
            case .release: return "Release"
        }
    }

    // MARK: - Static Property(ies).

    static var current: Environment {
        #if DEBUG 
            return .debug
        #else
            return .release
        #endif
    }
}