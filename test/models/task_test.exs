defmodule Prizex.TaskTest do
  use Prizex.ModelCase

  alias Prizex.Task

  @valid_attrs %{consumed_time: "some content", date_end: %{day: 17, hour: 14, min: 0, month: 4, sec: 0, year: 2010}, date_start: %{day: 17, hour: 14, min: 0, month: 4, sec: 0, year: 2010}, name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Task.changeset(%Task{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Task.changeset(%Task{}, @invalid_attrs)
    refute changeset.valid?
  end
end
