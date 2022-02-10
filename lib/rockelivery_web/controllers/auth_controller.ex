defmodule RockeliveryWeb.AuthController do
  use RockeliveryWeb, :controller

  alias RockeliveryWeb.Auth.Guardian
  alias RockeliveryWeb.FallbackController

  action_fallback FallbackController

  def login(conn, params) do
    with {:ok, token} <-  Guardian.authenticate(params) do
      conn
      |> put_status(:ok)
      |> render("login.json", token: token)
    end
  end
end
