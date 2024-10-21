defmodule Hishund.Bot do
  use Telegram.Bot

  @impl Telegram.Bot
  def handle_update(%{"message" => %{"text" => "/start"}}, _token) do
    IO.puts("HI")
  end
end
