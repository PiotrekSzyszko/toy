defmodule ToyWeb.OtherPageLive do
  use ToyWeb, :live_view

  def render(assigns) do
    ~H"""
    <h1>Inna strona Live</h1>
    <.link navigate={~p"/"} class="link link-info">Wracaj</.link>
    """
  end
end
