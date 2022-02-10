defmodule RockeliveryWeb.UsersViewTest do
  use RockeliveryWeb.ConnCase, async: true

  import Phoenix.View
  import Rockelivery.Factory

  alias RockeliveryWeb.UsersView

  describe "render/2" do
    test "renders create.json" do
      user = build(:user)
      token = "xpto1234"

      response = render(UsersView, "create.json", token: token, user: user)

      assert %{
               message: "User created!",
               token: "xpto1234",
               user: %Rockelivery.User{
                 address: "Factory Address, 15",
                 age: 30,
                 cep: "12345678",
                 cpf: "12345678900",
                 email: "factory@example.com",
                 id: "3ad24a2c-ed8c-483f-86dc-0b607d4551ee",
                 inserted_at: nil,
                 name: "Factory User",
                 password: "123456",
                 password_hash: nil,
                 updated_at: nil
               }
             } = response
    end
  end
end
