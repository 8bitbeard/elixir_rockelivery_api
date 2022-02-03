defmodule Rockelivery.Factory do
  use ExMachina

  def user_params_factory do
    %{
      age: 30,
      address: "Rua teste, 15",
      cep: "12345678",
      cpf: "12345678900",
      email: "teste@example.com",
      password: "123456",
      name: "User Test"
    }
  end
end
