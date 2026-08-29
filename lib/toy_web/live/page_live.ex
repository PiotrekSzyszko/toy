defmodule ToyWeb.PageLive do
  use ToyWeb, :live_view

  def render(assigns) do
    ~H"""
    <h1>Witaj na mojej stronie!</h1>
    <ul>
      <li><.link navigate={~p"/blog/dolphins"} class="link link-info">Czytaj o delfinach</.link></li>
      <li><.link navigate={~p"/blog/elephants"} class="link link-info">Czytaj o słoniach</.link></li>
    </ul>
    """
  end
end
