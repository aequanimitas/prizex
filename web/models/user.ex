defmodule Prizex.User do
  use Prizex.Web, :model

  schema "users" do
    field :name, :string
    field :username, :string
    field :password, :string, virtual: true
    field :password_hash, :string
    field :profile_visibility, :boolean    

    timestamps
  end
end
