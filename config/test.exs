use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :prizex, Prizex.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :prizex, Prizex.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "prizex_dev",
  password: "prizex_dev",
  database: "prizex_dev",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
