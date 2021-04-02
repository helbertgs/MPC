import Foundation

protocol Playback: Plugin {
    
    // MARK: - Property(ies).

    /// The playback type.
    var type: PlaybackType { get }

    /// The state of the playback.
    var state: PlaybackState { get }

    /// Returns the current time of the item.
    var currentTime: TimeInterval { get }

    /// The duration of the item.
    var duration: TimeInterval { get }

    /// A Boolean value that indicates whether the item can be played in reverse.
    var canPlayReverse: Bool { get }

    /// A Boolean value that indicates whether the item can be fast forwared.
    var canPlayFastForward: Bool { get }

    /// A Boolean value that indicates whether the item can be quickly reversed.
    var canPlayFastReverse: Bool { get }
    
    /// A Boolean value that indicates whether the item can be played slower than normal.
    var canPlaySlowForward: Bool { get }
    
    /// A Boolean value that indicates whether the item can be played slowly backward.
    var canPlaySlowReverse: Bool { get }

    /// A Boolean value that indicates whether the item supports stepping forward.
    var canStepForward: Bool { get }

    /// A Boolean value that indicates whether the item supports stepping backward.
    var canStepBackward: Bool { get }

    /// A Boolean value that indicates whether the audio output of the player is muted.
    var isMuted: Bool { get }

    /// The audio playback volume for the player.
    var volume: Double { get set }
    
    // MARK: - Function(s).

    /// Begins playback of the current item.
    func play()

    /// Pauses playback of the current item.
    func pause()

    /// Stops playback of the current item.
    func stop()

    /// Sets the current playback time to the specified time.
    func seek(to: TimeInterval)
}