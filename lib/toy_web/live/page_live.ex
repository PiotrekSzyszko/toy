defmodule ToyWeb.PageLive do
  use ToyWeb, :live_view

  def mount(_params, _session, socket) do
    socket = assign(socket, temp_celsjusza: 30)
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div>
      Aktualna temperatura: {@temp_celsjusza}C
    </div>
    <div>
      <%= cond do %>
        <% @temp_celsjusza > 40 -> %>
          <p>🔥 Gorąco jak w piekle 🔥</p>
        <% @temp_celsjusza > 30 -> %>
          <p>Bardzo gorąco</p>
        <% @temp_celsjusza > 20 -> %>
          <p>Idealnie</p>
        <% @temp_celsjusza > 10 -> %>
          <p>Chłodno</p>
        <% @temp_celsjusza > 0 -> %>
          <p>Zimno</p>
        <% true -> %>
          <p>❄️⛄️</p>
      <% end %>
    </div>
    <.button phx-click="add" phx-value-ilosc={+5}> +5</.button>
    <.button phx-click="add" phx-value-ilosc={+10}> +10</.button>
    <.button phx-click="add" phx-value-ilosc={-5}> -5</.button>
    <.button phx-click="add" phx-value-ilosc={-10}> -10</.button>
    """
  end

  def handle_event("add", %{"ilosc" => ilosc}, socket) do
    ilosc = String.to_integer(ilosc)
    socket = update(socket, :temp_celsjusza, &(&1 + ilosc))
    {:noreply, socket}
  end
end
