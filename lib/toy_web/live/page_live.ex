defmodule ToyWeb.PageLive do
  use ToyWeb, :live_view

  def render(assigns) do
    ~H"""
    <h1>Siema</h1>
    <.link navigate={~p"/other"} class="link link-info">Dalej</.link>
    """
  end
end
