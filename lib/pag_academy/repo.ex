defmodule PagAcademy.Repo do
  use Ecto.Repo,
    otp_app: :pag_academy,
    adapter: Ecto.Adapters.Postgres
end
