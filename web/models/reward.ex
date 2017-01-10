defmodule Prizex.Reward do
  use Prizex.Web, :model

  schema "rewards" do
    field :name, :string
    field :required_time, :string
    field :date_redeemed, Ecto.DateTime

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :required_time])
    |> validate_required([:name, :required_time])
  end
end
