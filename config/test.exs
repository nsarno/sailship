use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :marketplace, Marketplace.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

config :marketplace, sql_sandbox: true

# Configure your database
config :marketplace, Marketplace.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "marketplace_test",
  hostname: "db",
  pool: Ecto.Adapters.SQL.Sandbox

# config/test.exs
config :comeonin, :bcrypt_log_rounds, 4
config :comeonin, :pbkdf2_rounds, 1
