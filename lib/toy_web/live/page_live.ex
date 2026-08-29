defmodule ToyWeb.PageLive do
  use ToyWeb, :live_view

  def mount(_params, _session, socket) do
    socket = assign(socket, zakładka: "home")
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div>
      <%= case @zakładka do %>
        <% "home" -> %>
          <p>Jesteś na stronie głównej</p>
        <% "about" -> %>
          <p>Jesteś na stronie o mnie</p>
        <% "contact" -> %>
          <p>Napisz do mnie małpa@małpa.com</p>
      <% end %>
    </div>

    <.button
      disabled={@zakładka == "home"}
      phx-click="show_home"
      class="btn btn-primary"
    >
      Główna
    </.button>
    <.button
      disabled={@zakładka == "about"}
      phx-click="show_about"
      class="btn btn-info"
    >
      O mnie
    </.button>
    <.button
      disabled={@zakładka == "contact"}
      phx-click="show_contact"
      class="btn btn-success"
    >
      Kontakt
    </.button>
    """
  end

  def handle_event("show_" <> zakładka, _params, socket) do
    socket = assign(socket, zakładka: zakładka)
    {:noreply, socket}
  end
end
