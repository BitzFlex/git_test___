defmodule GitTest.Repo do
  use Ecto.Repo,
    otp_app: :git_test,
    adapter: Ecto.Adapters.Postgres
end
