use Mix.Config

config :zapex, ZapexWeb.Endpoint,
  http: [port: 4002],
  server: false

config :logger, level: :warn

config :zapex, Zapex.Repo,
  url: System.get_env("DATABASE_URL") || "postgresql://zapex_usr:zapex_pwd@localhost/zapex_test",
  pool: Ecto.Adapters.SQL.Sandbox
