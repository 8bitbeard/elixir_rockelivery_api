defmodule Rockelivery.Factory do
  use ExMachina.Ecto, repo: Rockelivery.Repo

  alias Rockelivery.User

  def user_params_factory do
    %{
      age: 30,
      address: "Factory Address, 15",
      cep: "12345678",
      cpf: "12345678900",
      email: "factory@example.com",
      password: "123456",
      name: "Factory User"
    }
  end

  def user_factory do
    %User{
      age: 30,
      address: "Factory Address, 15",
      cep: "12345678",
      cpf: "12345678900",
      email: "factory@example.com",
      password: "123456",
      name: "Factory User",
      id: "3ad24a2c-ed8c-483f-86dc-0b607d4551ee"
    }
  end
end
