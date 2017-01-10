defmodule Prizex.RewardTest do
  use Prizex.ModelCase

  alias Prizex.Reward

  @valid_attrs %{date_redeemed: %{day: 17, hour: 14, min: 0, month: 4, sec: 0, year: 2010}, name: "some content", required_time: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Reward.changeset(%Reward{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Reward.changeset(%Reward{}, @invalid_attrs)
    refute changeset.valid?
  end
end
