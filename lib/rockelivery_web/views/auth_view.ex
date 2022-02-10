defmodule RockeliveryWeb.AuthView do
  use RockeliveryWeb, :view

  def render("login.json", %{token: token}), do: %{token: token}
end
