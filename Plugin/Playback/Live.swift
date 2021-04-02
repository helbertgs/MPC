import Foundation

class Live: Plugin, Playback {

    // MARK: - Property(ies).

    /// The playback type.
    var type: PlaybackType = .live

    /// The state of the playback.
    var state: PlaybackState = .none

    /// Returns the current time of the item.
    var currentTime: TimeInterval = .zero

    /// The duration of the item.
    var duration: TimeInterval = .zero

    /// A Boolean value that indicates whether the item can be played in reverse.
    var canPlayReverse: Bool = false

    /// A Boolean value that indicates whether the item can be fast forwared.
    var canPlayFastForward: Bool = false

    /// A Boolean value that indicates whether the item can be quickly reversed.
    var canPlayFastReverse: Bool = false
    
    /// A Boolean value that indicates whether the item can be played slower than normal.
    var canPlaySlowForward: Bool = false
    
    /// A Boolean value that indicates whether the item can be played slowly backward.
    var canPlaySlowReverse: Bool = false

    /// A Boolean value that indicates whether the item supports stepping forward.
    var canStepForward: Bool = false

    /// A Boolean value that indicates whether the item supports stepping backward.
    var canStepBackward: Bool = false

    /// A Boolean value that indicates whether the audio output of the player is muted.
    var isMuted: Bool = false

    /// The audio playback volume for the player.
    var volume: Double = .zero
    
    // MARK: - Function(s).

    /// Begins playback of the current item.
    func play() { }

    /// Pauses playback of the current item.
    func pause() { }

    /// Stops playback of the current item.
    func stop() { }

    /// Sets the current playback time to the specified time.
    func seek(to: TimeInterval) { }

    // MARK: - Plugin Function(s).

    override func onCreate() {
        super.onCreate()
    }
}