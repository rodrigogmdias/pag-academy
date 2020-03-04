defmodule PagAcademyWeb.PageController do
  use PagAcademyWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
