# frozen_string_literal: true

require "telegram/bot"

class Hishund
  class TelegramAPI
    def initialize(token)
      @token = token
      @bot = Telegram::Bot::Client.new(token)
    end

    def start_processing
      bot.listen do |message|
        case message.text
        when "/start"
          handle_start(message.chat.id)
        when "/add_reminder"
          p "ADD REMINDER"
        end
      end
    end

    private

    attr_reader :token, :bot

    def handle_start(chat_id)
      markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(
        inline_keyboard: navigation_keyboard
      )
      bot.api.send_message(
        chat_id: chat_id, 
        text: "Make a choices", 
        reply_markup: markup
      )
    end

    def navigation_keyboard
      [[
        Telegram::Bot::Types::InlineKeyboardButton.new(text: "Add reminder", url: "https://google.com"),
        Telegram::Bot::Types::InlineKeyboardButton.new(text: "List of reminders", url: "https://google.com")
      ]]
    end
  end
end
