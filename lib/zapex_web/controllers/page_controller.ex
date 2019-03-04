defmodule ZapexWeb.PageController do
  use ZapexWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
