# config/config.exs
use Mix.Config

if Mix.env == :dev do
  config :mix_test_watch,
    tasks: [
      "test",
      "dogma",
    ],
    clear: true
end
