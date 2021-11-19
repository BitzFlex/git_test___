# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :git_test,
  ecto_repos: [GitTest.Repo]

# Configures the endpoint
config :git_test, GitTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+GiKv3mNrTUHAwmJBG86seNr8L+UmHLz4exS0wHlLhZr+PoG/N4hfNbNG4tafzkX",
  render_errors: [view: GitTestWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: GitTest.PubSub,
  live_view: [signing_salt: "RagQPzOa"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
