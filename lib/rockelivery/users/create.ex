defmodule Rockelivery.Users.Create do
  alias Rockelivery.{Error, Repo, User}

  def call(params) do
    cep = Map.get(params, "cep")
    changeset = User.changeset(params)

    with {:ok, %User{}} <- User.build(changeset),
         {:ok, _cep_info} <- client().get_cep_info(cep),
         {:ok, %User{}} = user <- Repo.insert(changeset) do
      user
    else
      {:error, %Error{}} = error -> error
      {:error, result} -> {:error, Error.build(:bad_request, result)}
    end

    # case Client.get_cep_info(cep) do
    #   {:ok, _cep_info} -> create_user(params)
    #   {:error, _result} = error -> error
    # end
  end

  defp client do
    :rockelivery
    |> Application.fetch_env!(__MODULE__)
    |> Keyword.get(:via_cep_adapter)
  end

  # defp create_user(params, changeset) do
  #   Repo.insert(changeset)
  # end

  # defp handle_insert({:ok, %User{}} = result), do: result

  # defp handle_insert({:error, result}) do
  #   {:error, Error.build(:bad_request, result)}
  # end
end
