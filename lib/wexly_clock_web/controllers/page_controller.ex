defmodule WexlyClockWeb.PageController do
  use WexlyClockWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html", welcome_text: "Welcome to Phoenix!", people: [])
  end
end
