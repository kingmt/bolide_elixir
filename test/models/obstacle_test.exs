defmodule Bolide.ObstacleTest do
  use Bolide.ModelCase

  alias Bolide.Obstacle

  @valid_attrs %{center_x: 1, center_y: 2, radius: 4.2, segment_number: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Obstacle.changeset(%Obstacle{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Obstacle.changeset(%Obstacle{}, @invalid_attrs)
    refute changeset.valid?
  end
end
