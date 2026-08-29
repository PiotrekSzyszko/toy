defmodule ToyWeb.BlogLive do
  use ToyWeb, :live_view

  def mount(%{"slug" => slug}, _session, socket) do
    socket = assign(socket, :slug, slug)
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1 class="text-3xl">Czytanie o {@slug}</h1>
    """
  end
end
