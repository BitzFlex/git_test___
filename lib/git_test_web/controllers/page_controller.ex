defmodule GitTestWeb.PageController do
  use GitTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
