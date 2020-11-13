# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :assert_patched_bug_report,
  ecto_repos: [AssertPatchedBugReport.Repo]

# Configures the endpoint
config :assert_patched_bug_report, AssertPatchedBugReportWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DOzqzjuEdcNcyFJhiF0aQvmJsXpzZSFFeKPJ91tIRTW0JEm2FbymvI5vKV+5Y0KO",
  render_errors: [view: AssertPatchedBugReportWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: AssertPatchedBugReport.PubSub,
  live_view: [signing_salt: "5s6SSpDF"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
