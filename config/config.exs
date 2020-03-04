# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :pag_academy,
  ecto_repos: [PagAcademy.Repo]

# Configures the endpoint
config :pag_academy, PagAcademyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "q+ylYLiVfyOc0Zwb6GylDadOxWZXLdzq/MfE1LwKcKak334ZrqrJWs+3cwycfiXB",
  render_errors: [view: PagAcademyWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PagAcademy.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "/13MM0CD"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
