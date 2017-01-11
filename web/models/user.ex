defmodule Prizex.User do
  use Prizex.Web, :model

  schema "users" do
    field :username, :string
    has_many :user_tasks, Prizex.Task
    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:username])
    |> validate_required([:username])
  end
end
