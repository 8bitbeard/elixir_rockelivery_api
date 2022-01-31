defmodule RockeliveryWeb.WelcomeController do
  use RockeliveryWeb, :controller

  def index(conn, _params) do
    conn
    |> put_status(:bad_request)
    |> json("Welcome!")
  end
end
