defmodule LearningElixir.Repo do
  use Ecto.Repo,
    otp_app: :learning_elixir,
    adapter: Ecto.Adapters.Postgres
end
