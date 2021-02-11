# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :my_app,
  ecto_repos: [MyApp.Repo],
  generators: [binary_id: true]

# Add support for microseconds at the database level
# avoid having to configure it on every migration file
config :my_app, MyApp.Repo, migration_timestamps: [type: :utc_datetime_usec]

# Configures the endpoint
config :my_app, MyAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OIuK0BNkucGsprnh947g/O09TbHyp9TpJq8XLsIoZFff1HcUs1tnGQpbpHboTnLf",
  render_errors: [view: MyAppWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: MyApp.PubSub,
  live_view: [signing_salt: "80pTf2bK"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
