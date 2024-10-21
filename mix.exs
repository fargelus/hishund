defmodule Hishund.MixProject do
  use Mix.Project

  def project do
    [
      app: :hishund,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Hishund.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:telegram, github: "visciang/telegram", tag: "1.2.3"},
      {:finch, "~> 0.19"},
      {:credo, "~> 1.4", only: [:dev, :test], runtime: false}
    ]
  end
end
