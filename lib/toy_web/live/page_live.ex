defmodule ToyWeb.PageLive do
  use ToyWeb, :live_view

  def render(assigns) do
    ~H"""
    <.mój_przycisk color="blue">Default</.mój_przycisk>
    <.mój_przycisk color="green">Zielony</.mój_przycisk>
    <.mój_przycisk color="red">Czerwony</.mój_przycisk>
    <.mój_przycisk color="yellow">Żółty</.mój_przycisk>
    """
  end

  def mój_przycisk(assigns) do
    ~H"""
    <button
      type="button"
      class={"text-white bg-#{@color}-700 hover:bg-#{@color}-800 focus:ring-4 focus:ring-#{@color}-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2 dark:bg-#{@color}-600 dark:hover:bg-#{@color}-700 focus:outline-none dark:focus:ring-#{@color}-800"}
    >
      {render_slot(@inner_block)}
    </button>
    """
  end
end
