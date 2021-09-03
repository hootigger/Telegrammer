// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

public extension Bot {

    /// Parameters container struct for `editMessageText` method
    struct EditMessageTextParams: JSONEncodable {

        /// Required if inline_message_id is not specified. Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId?

        /// Required if inline_message_id is not specified. Identifier of the message to edit
        var messageId: Int?

        /// Required if chat_id and message_id are not specified. Identifier of the inline message
        var inlineMessageId: String?

        /// New text of the message, 1-4096 characters after entities parsing
        var text: String

        /// Mode for parsing entities in the message text. See formatting options for more details.
        var parseMode: ParseMode?

        /// List of special entities that appear in message text, which can be specified instead of parse_mode
        var entities: [MessageEntity]?

        /// Disables link previews for links in this message
        var disableWebPagePreview: Bool?

        /// A JSON-serialized object for an inline keyboard.
        var replyMarkup: InlineKeyboardMarkup?

        /// Custom keys for coding/decoding `EditMessageTextParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case messageId = "message_id"
            case inlineMessageId = "inline_message_id"
            case text = "text"
            case parseMode = "parse_mode"
            case entities = "entities"
            case disableWebPagePreview = "disable_web_page_preview"
            case replyMarkup = "reply_markup"
        }

        public init(chatId: ChatId? = nil, messageId: Int? = nil, inlineMessageId: String? = nil, text: String, parseMode: ParseMode? = nil, entities: [MessageEntity]? = nil, disableWebPagePreview: Bool? = nil, replyMarkup: InlineKeyboardMarkup? = nil) {
            self.chatId = chatId
            self.messageId = messageId
            self.inlineMessageId = inlineMessageId
            self.text = text
            self.parseMode = parseMode
            self.entities = entities
            self.disableWebPagePreview = disableWebPagePreview
            self.replyMarkup = replyMarkup
        }
    }

    /**
     Use this method to edit text and game messages. On success, if the edited message is not an inline message, the edited Message is returned, otherwise True is returned.

     SeeAlso Telegram Bot API Reference:
     [EditMessageTextParams](https://core.telegram.org/bots/api#editmessagetext)
     
     - Parameters:
         - params: Parameters container, see `EditMessageTextParams` struct
     - Throws: Throws on errors
     - Returns: Future of `MessageOrBool` type
     */
    @discardableResult
    func editMessageText(params: EditMessageTextParams) throws -> Future<MessageOrBool> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try client
            .request(endpoint: "editMessageText", body: body, headers: headers)
            .flatMapThrowing { (container) -> MessageOrBool in
                return try self.processContainer(container)
        }
    }
}

// MARK: Concurrency Support
#if compiler(>=5.5)
@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
public extension Bot {

    /**
     Use this method to edit text and game messages. On success, if the edited message is not an inline message, the edited Message is returned, otherwise True is returned.

     SeeAlso Telegram Bot API Reference:
     [EditMessageTextParams](https://core.telegram.org/bots/api#editmessagetext)
     
     - Parameters:
         - params: Parameters container, see `EditMessageTextParams` struct
     - Throws: Throws on errors
     - Returns: Future of `MessageOrBool` type
     */
    @discardableResult
    func editMessageText(params: EditMessageTextParams) async throws -> MessageOrBool {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try self.processContainer(try await client.request(endpoint: "editMessageText", body: body, headers: headers))
    }
}
#endif
