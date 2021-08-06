# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :learning_elixir,
  ecto_repos: [LearningElixir.Repo]

# Configures the endpoint
config :learning_elixir, LearningElixirWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "EvE4ovZiFWdh7MEk/6c9NB9iYupeZ7tiR1R+2YFm7qYy5JhhBpice60xtuxWqCJg",
  render_errors: [view: LearningElixirWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: LearningElixir.PubSub,
  live_view: [signing_salt: "kgP7u8LR"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
