defmodule ToyWeb.PageLive do
  use ToyWeb, :live_view

  def mount(_params, _session, socket) do
    # logikę wykonywać w mount/3 ponieważ render/1 ma być maksymalnie głupi!
    owoce =
      Enum.filter(~w(jabłko banan marchewka cytryna), fn owoc -> owoc != "banan" end)

    socket = assign(socket, owoce: owoce)
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <ul class="p-4 bg-yellow-300">
      <li :for={owoc <- @owoce}>{owoc}</li>
    </ul>
    """
  end
end
