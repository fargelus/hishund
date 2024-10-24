# frozen_string_literal: true

require_relative "hishund/version"
require_relative "hishund/telegram_api"

class Hishund
  class Error < StandardError; end

  def self.run(bot_token)
    TelegramAPI.new(bot_token).start_processing
  end
end
