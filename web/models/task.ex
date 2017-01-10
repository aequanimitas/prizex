defmodule Prizex.Task do
  use Prizex.Web, :model

  schema "tasks" do
    field :name, :string
    field :date_start, Ecto.Date
    field :date_end, Ecto.Date
    field :time_start, Ecto.DateTime
    field :time_end, Ecto.DateTime
    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.

  Call this on REPL before doing an insert to properly cast datetime fields
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :date_start, :date_end, :time_start, :time_end])
    |> validate_required([:name, :date_start, :date_end, :time_start, :time_end])
  end
end
