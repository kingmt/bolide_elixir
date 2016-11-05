defmodule Bolide.PageController do
  use Bolide.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
