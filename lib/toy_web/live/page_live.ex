defmodule ToyWeb.PageLive do
  use ToyWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      stream(socket, :pokarmy, [
        %{id: 1, nazwa: "jabłko"},
        %{id: 2, nazwa: "banan"},
        %{id: 3, nazwa: "cytryna"},
        %{id: 4, nazwa: "morela"},
        %{id: 5, nazwa: "sliwka"},
        %{id: 6, nazwa: "arbuz"}
      ])

    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <ul id="strumien-jedzenia" phx-update="stream">
      <li :for={{dom_id, pokarm} <- @streams.pokarmy} id={dom_id}>{pokarm.nazwa}</li>
    </ul>
    """
  end
end
