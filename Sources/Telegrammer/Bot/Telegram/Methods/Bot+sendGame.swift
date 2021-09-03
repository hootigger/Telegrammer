// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

public extension Bot {

    /// Parameters container struct for `sendGame` method
    struct SendGameParams: JSONEncodable {

        /// Unique identifier for the target chat
        var chatId: Int64

        /// Short name of the game, serves as the unique identifier for the game. Set up your games via Botfather.
        var gameShortName: String

        /// Sends the message silently. Users will receive a notification with no sound.
        var disableNotification: Bool?

        /// If the message is a reply, ID of the original message
        var replyToMessageId: Int?

        /// Pass True, if the message should be sent even if the specified replied-to message is not found
        var allowSendingWithoutReply: Bool?

        /// A JSON-serialized object for an inline keyboard. If empty, one 'Play game_title' button will be shown. If not empty, the first button must launch the game.
        var replyMarkup: InlineKeyboardMarkup?

        /// Custom keys for coding/decoding `SendGameParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case gameShortName = "game_short_name"
            case disableNotification = "disable_notification"
            case replyToMessageId = "reply_to_message_id"
            case allowSendingWithoutReply = "allow_sending_without_reply"
            case replyMarkup = "reply_markup"
        }

        public init(chatId: Int64, gameShortName: String, disableNotification: Bool? = nil, replyToMessageId: Int? = nil, allowSendingWithoutReply: Bool? = nil, replyMarkup: InlineKeyboardMarkup? = nil) {
            self.chatId = chatId
            self.gameShortName = gameShortName
            self.disableNotification = disableNotification
            self.replyToMessageId = replyToMessageId
            self.allowSendingWithoutReply = allowSendingWithoutReply
            self.replyMarkup = replyMarkup
        }
    }

    /**
     Use this method to send a game. On success, the sent Message is returned.

     SeeAlso Telegram Bot API Reference:
     [SendGameParams](https://core.telegram.org/bots/api#sendgame)
     
     - Parameters:
         - params: Parameters container, see `SendGameParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Message` type
     */
    @discardableResult
    func sendGame(params: SendGameParams) throws -> Future<Message> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try client
            .request(endpoint: "sendGame", body: body, headers: headers)
            .flatMapThrowing { (container) -> Message in
                return try self.processContainer(container)
        }
    }
}

// MARK: Concurrency Support
#if compiler(>=5.5)
@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
public extension Bot {

    /**
     Use this method to send a game. On success, the sent Message is returned.

     SeeAlso Telegram Bot API Reference:
     [SendGameParams](https://core.telegram.org/bots/api#sendgame)
     
     - Parameters:
         - params: Parameters container, see `SendGameParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Message` type
     */
    @discardableResult
    func sendGame(params: SendGameParams) async throws -> Message {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try self.processContainer(try await client.request(endpoint: "sendGame", body: body, headers: headers))
    }
}
#endif
