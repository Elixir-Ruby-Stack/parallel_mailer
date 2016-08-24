# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :parallel_mailer,
  ecto_repos: [ParallelMailer.Repo]

# Configures the endpoint
config :parallel_mailer, ParallelMailer.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "XeessQ1XuhBxoCwQYqZ3LXryOt66ssoFVAElWqwAXi0MCBKa4vyNzPP9s85hqbuX",
  render_errors: [view: ParallelMailer.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ParallelMailer.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
