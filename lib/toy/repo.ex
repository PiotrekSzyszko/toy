defmodule Toy.Repo do
  use Ecto.Repo,
    otp_app: :toy,
    adapter: Ecto.Adapters.SQLite3
end
