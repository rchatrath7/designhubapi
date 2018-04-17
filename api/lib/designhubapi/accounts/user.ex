defmodule Designhubapi.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :email, :string
    field :name, :string
    field :password_hash, :string
    field :username, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:username, :email, :password_hash, :name])
    |> validate_required([:username, :email, :password_hash, :name])
    |> unique_constraint(:username)
    |> unique_constraint(:email)
  end
end
