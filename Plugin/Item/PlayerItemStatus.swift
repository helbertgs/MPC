import Foundation

enum PlayerItemStatus {

    /// The item’s status is unknown.
    case unknown

    /// The item is ready to play.
    case ready

    /// The item no longer plays due to an error.
    case error(Error)
}