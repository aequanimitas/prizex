defmodule Prizex.Reward do
  # time required defaults to minutes
  use Prizex.Web, :model
  
  schema "rewards" do
    field :name, :string
    # string for now, architecture is a bit complicated
    field :required_total, :string 
    timestamps
  end
end
