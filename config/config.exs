# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :elixirProject,
  ecto_repos: [ElixirProject.Repo]

config :elixirProject_web,
  ecto_repos: [ElixirProject.Repo],
  generators: [context_app: :elixirProject]

# Configures the endpoint
config :elixirProject_web, ElixirProjectWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7LjTU7zCPyQl+KxnGT495sJpYjSNVjCQ9z4UHfMc8zMS54upd6vGp2SAT3GlUCyi",
  render_errors: [view: ElixirProjectWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElixirProjectWeb.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "nFQ3enn4"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
