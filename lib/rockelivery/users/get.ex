defmodule Rockelivery.Users.Get do
  alias Rockelivery.{Error, Repo, User}

  # EXEMPLO USANDO O WITH
  # def by_id(id) do
  #   with {:ok, uuid} <- UUID.cast(id),
  #        %User{} = user <- Repo.get(User, uuid) do
  #     {:ok, user}
  #   else
  #     :error -> {:error, %{status: :bad_request, result: "Invalid id format!"}}
  #     nil -> {:error, %{status: :not_found, result: "User not found"}}
  #   end
  # end

  def by_id(id) do
    case Repo.get(User, id) do
      nil -> {:error, Error.build_user_not_found_error()}
      user -> {:ok, user}
    end
  end

  def by_email(email) do
    case Repo.get_by(User, email: email) do
      nil -> {:error, Error.build_user_not_found_error()}
      user -> {:ok, user}
    end
  end
end
