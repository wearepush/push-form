import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :form, FormWeb.Endpoint,
  http: [port: 4002],
  server: false

# Configure your database
config :form, Form.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "form_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# In test we don't send emails.
config :form, Form.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
