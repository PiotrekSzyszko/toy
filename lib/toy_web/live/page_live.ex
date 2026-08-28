defmodule ToyWeb.PageLive do
  use ToyWeb, :live_view

  def mount(_params, _session, socket) do
    socket = assign(socket, imię: "Piotrek")
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1 class="text-3xl">Witaj {@imię}!</h1>
    <.button phx-click="odwraca" class="btn btn-info">Odwróć</.button>
    """
  end

  def handle_event("odwraca", _params, socket) do
    socket = assign(socket, imię: String.reverse(socket.assigns.imię))
    {:noreply, socket}
  end
end
