defmodule ToyWeb.PageController do
  use ToyWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
