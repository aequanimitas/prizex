defmodule Prizex.PageController do
  use Prizex.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
