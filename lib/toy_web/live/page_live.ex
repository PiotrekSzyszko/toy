defmodule ToyWeb.PageLive do
  use ToyWeb, :live_view

  def render(assigns) do
    ~H"""
    <.mój_przycisk>Akceptuj</.mój_przycisk>
    """
  end

  @doc """
  Renderuje przycisk

  ## Przykład

      <.mój_przycisk>Usuń konto!</.mój_przycisk>
      <.mój_przycisk color="red">Usuń konto</.mój_przycisk>
  """
  attr :color, :string, default: "blue"
  slot :inner_block, required: true

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
