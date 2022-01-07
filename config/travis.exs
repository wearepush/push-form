import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :form, FormWeb.Endpoint,
  http: [port: 4002],
  secret_key_base: "FQFcpK3/SPOwvofMHdG2jbScpKOTzgQfruTiHviuv57UyXX0gS8d6Aw9fVdSW7iF",
  server: false

# Configure your database
config :form, Form.Repo,
  username: "postgres",
  password: "",
  database: "form_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# Print only warnings and errors during test
config :logger, level: :warn
