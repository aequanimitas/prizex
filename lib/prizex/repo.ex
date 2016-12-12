defmodule Prizex.Repo do
  #use Ecto.Repo, otp_app: :prizex

  @moduledoc """
  in-memory on initial stages
  """

  def all(Prizex.Reward) do
    [
      %Prizex.Reward{id: "1", name: "dota 2", time_required: 480},
      %Prizex.Reward{id: "2", name: "social", time_required: 480},
      %Prizex.Reward{id: "3", name: "vape", time_required: 180}
    ]
  end

  def all(_module), do: []

  def get(module, id) do
    Enum.find all(module), fn map -> map.id == id end
  end

  def get_by(module, params) do
    Enum.find all(module), fn map ->
      Enum.all?(params, fn {k, v} -> Map.get(map, k) == v end)
    end
  end
end
