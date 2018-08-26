defmodule WexlyClockWeb.PageCommander do
  use Drab.Commander
  # Place your event handlers here
  #
  # defhandler button_clicked(socket, sender) do
  #   set_prop socket, "#output_div", innerHTML: "Clicked the button!"
  # end
  #
  # Place you callbacks here
  #
  onload(:page_loaded)

  @spec page_loaded(Phoenix.Socket.t()) ::
          {:error, :disconnected | :timeout | binary() | [any()] | number() | map()}
          | {:ok, :disconnected | :timeout | binary() | [any()] | number() | map()}
  def page_loaded(socket) do
    poke(socket, welcome_text: "This page has been drabbed")

    set_prop(
      socket,
      "div.jumbotron p.lead",
      innerHTML: "Please visit <a href='https://tg.pl/drab'>Drab</a> page for more"
    )
  end
end
