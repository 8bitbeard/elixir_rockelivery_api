defmodule Rockelivery.Factory do
  use ExMachina.Ecto, repo: Rockelivery.Repo

  alias Rockelivery.User

  def user_params_factory do
    %{
      "age" => 30,
      "address" => "Factory Address, 15",
      "cep" => "12345678",
      "cpf" => "12345678900",
      "email" => "factory@example.com",
      "password" => "123456",
      "name" => "Factory User"
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

  def cep_info_factory do
    %{
      "bairro" => "Sé",
      "cep" => "01001-000",
      "complemento" => "lado ímpar",
      "ddd" => "11",
      "gia" => "1004",
      "ibge" => "3550308",
      "localidade" => "São Paulo",
      "logradouro" => "Praça da Sé",
      "siafi" => "7107",
      "uf" => "SP"
    }
  end
end
