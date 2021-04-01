import Foundation

enum PlaybackState: Equatable {

    // MARK: - Case(s).

    case idle
    case none
    case playing
    case paused
    case stalling
    case error(Error)

    // MARK: - Equatable Function(s).

    static func == (_ lhs: PlaybackState, _ rhs: PlaybackState) -> Bool {
        switch(lhs, rhs) {
            case (.idle, .idle): return true
            case (.none, .none): return true
            case (.playing, .playing): return true
            case (.stalling, .stalling): return true
            case (let .error(lhsError), let .error(rhsError)): return lhsError.localizedDescription == rhsError.localizedDescription
            default: return false
        }
    }
}