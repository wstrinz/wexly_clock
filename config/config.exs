# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :wexly_clock,
  ecto_repos: [WexlyClock.Repo]

# Configures the endpoint
config :wexly_clock, WexlyClockWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "lzKHGJVvsXb+b5WNbK8ToIoLSk0DyrxnTE3eR4b+o9lCrN3oAe1uNCjyLeqr4DcO",
  render_errors: [view: WexlyClockWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: WexlyClock.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Drab
config :drab, WexlyClockWeb.Endpoint,
  otp_app: :wexly_clock

# Configures default Drab file extension
config :phoenix, :template_engines,
  drab: Drab.Live.Engine

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
