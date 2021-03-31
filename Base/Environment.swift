import Foundation

enum Environment: String, Codable, Equatable {
    case debug, release

    static var current: Environment {
        #if DEBUG 
            return .debug
        #else
            return .release
        #endif
    }
}