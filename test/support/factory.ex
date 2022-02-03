defmodule Rockelivery.Factory do
  use ExMachina

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
end
