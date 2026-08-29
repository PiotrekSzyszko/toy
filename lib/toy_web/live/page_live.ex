defmodule ToyWeb.PageLive do
  use ToyWeb, :live_view

  def mount(_params, _session, socket) do
    socket = assign(socket, temperatura_C: 30)
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1 class="text-3xl">Aktualna temperatura: {@temperatura_C} C</h1>
    <div>
      <%= cond do %>
        <% @temperatura_C > 40 -> %>
          <p>🔥 Upał niemożliwy do życia 🔥</p>
        <% @temperatura_C > 30 -> %>
          <p>Jest gorąco</p>
        <% @temperatura_C > 20 -> %>
          <p>Idealnie</p>
        <% @temperatura_C > 10 -> %>
          <p>Chłodnawo</p>
        <% @temperatura_C > 0 -> %>
          <p>Zimno</p>
        <% true -> %>
          <p>❄️⛄️</p>
      <% end %>
    </div>

    <.button
      phx-click="zwiększaTemp"
      class="btn btn-danger"
    >
      Zwiększ
    </.button>
    <.button
      phx-click="zmniejszaTemp"
      class="btn btn-success"
    >
      Zmniejsz
    </.button>
    """
  end

  def handle_event("zwiększaTemp", _params, socket) do
    socket = update(socket, :temperatura_C, &(&1 + 10))
    {:noreply, socket}
  end

  def handle_event("zmniejszaTemp", _params, socket) do
    socket = update(socket, :temperatura_C, &(&1 - 10))
    {:noreply, socket}
  end
end
