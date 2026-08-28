defmodule ToyWeb.PageLive do
  use ToyWeb, :live_view

  def render(assigns) do
    ~H"""
    <h1 class="text-3xl">Witaj Świecie!</h1>
    """
  end
end
