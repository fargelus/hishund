import Config

config :tesla, adapter: {Tesla.Adapter.Finch, name: Adapter.Finch, receive_timeout: 40_000}
config :hishund, bot_token: System.get_env("HISHUND_TELEGRAM_BOT_TOKEN")
