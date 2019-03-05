use Mix.Config

config :zapex, ZapexWeb.Endpoint,
  http: [:inet6, port: System.get_env("PORT") || 4000],
  url: [host: "example.com", port: 80],
  cache_static_manifest: "priv/static/cache_manifest.json"

config :logger, level: :info

config :zapex, Zapex.Repo, url: System.get_env("DATABASE_URL")
