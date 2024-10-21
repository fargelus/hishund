defmodule Hishund.Application do
  @moduledoc false

  def start(_type, _args) do
    token = Application.fetch_env!(:hishund, :bot_token)

    children = [
      {Finch, name: Adapter.Finch},
      {Telegram.Poller, bots: [
          {Hishund.Bot, token: token, max_bot_concurrency: 1_000}
        ]
      }
    ]
    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
