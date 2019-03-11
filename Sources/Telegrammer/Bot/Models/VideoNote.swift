// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/**
 This object represents a video message (available in Telegram apps as of v.4.0).

 SeeAlso Telegram Bot API Reference:
 [VideoNote](https://core.telegram.org/bots/api#videonote)
 */
public final class VideoNote: Codable {

    /// Custom keys for coding/decoding `VideoNote` struct
    enum CodingKeys: String, CodingKey {
        case fileId = "file_id"
        case length = "length"
        case duration = "duration"
        case thumb = "thumb"
        case fileSize = "file_size"
    }

    /// Unique identifier for this file
    public var fileId: String

    /// Video width and height (diameter of the video message) as defined by sender
    public var length: Int

    /// Duration of the video in seconds as defined by sender
    public var duration: Int

    /// Optional. Video thumbnail
    public var thumb: PhotoSize?

    /// Optional. File size
    public var fileSize: Int?


    public init (fileId: String, length: Int, duration: Int, thumb: PhotoSize? = nil, fileSize: Int? = nil) {
        self.fileId = fileId
        self.length = length
        self.duration = duration
        self.thumb = thumb
        self.fileSize = fileSize
    }
}
