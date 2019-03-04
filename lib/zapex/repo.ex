defmodule Zapex.Repo do
  use Ecto.Repo,
    otp_app: :zapex,
    adapter: Ecto.Adapters.Postgres
end
